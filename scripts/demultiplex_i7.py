#!/usr/bin/env python2.7
#
# Split raw fastqs by i7 index

import argparse
import gzip
import sys
import re

# parse command line options
parser = argparse.ArgumentParser(description='Demultiplex a set of raw fastqs based on a fastq file of i7 index reads')
parser.add_argument('-f','--forward', required=True, help='gzipped fastq, forward reads.')
parser.add_argument('-r','--reverse', required=True, help='gzipped fastq, reverse reads.')
parser.add_argument('-i7','--i7', required=True, help='i7 index fastq.')
parser.add_argument('-i5','--i5', required=True, help='i5 index fastq with molecular barcodes.')
parser.add_argument('-b','--barcodes', required=True, help='barcode file: barcode\tsample\n.')
args=parser.parse_args()

read1 = args.forward
read2 = args.reverse
i7s   = args.i7
i5s   = args.i5
bcfile= args.barcodes
len_bar = 0
barcodes = {}
barcode_cnt = 0
amb_barcodes = {}
barcode_cnts = {}

# get barcode and sample info from barcode file
fh = open(bcfile, 'r')
for barcode in fh:
    barcode = barcode.strip().split()
    samp    = barcode[0]
    bc      = barcode[1]
    len_bar = int(len(list(bc)))
    barcodes[bc] = samp
    barcode_cnts[bc] = 0
    barcode_cnt += 1
fh.close()

# create a dictionary with keys = ambigous barcodes; vals = inferred barcode
barcode_list = list(range(barcode_cnt))
barcode_cnt = 0
for barcode in barcodes:
    amb_barcodes[barcode] = list(range(len_bar))
    barcode_list[barcode_cnt] = list(barcode)
    barcode_cnt += 1
for barcode in barcode_list:
    true = ''.join(barcode)
    for i in range(len_bar):
        barcode[i] = '[ATCG]'
        amb_barcodes[true][i] = ''.join(barcode)
        barcode = list(true)
# print(barcodes)
# print(amb_barcodes)


# CREATE OUTPUT FILES FOR EACH BARCODE
for barcode in barcodes:
    samplename = barcodes[barcode]
    f1 = samplename+'.1.fastq.gz'
    f2 = samplename+'.2.fastq.gz'
    f3 = samplename+'.i7.fastq.gz'
    f4 = samplename+'.i5.fastq.gz'
    f1 = gzip.open(f1,'w')
    f1.close()
    f2 = gzip.open(f2,'w')
    f2.close()
    f3 = gzip.open(f3,'w')
    f3.close()
    f4 = gzip.open(f4,'w')
    f4.close()

# MOVE THROUGH FASTQ FILES

total = 0 # total reads
bcoded = 0 # reads with valid i7 barcodes
dupes  = 0 # reads representing PCR duplicates
passed = 0 # reads with valid barcodes that aren't PCR dupes

read1 = gzip.open(read1,'r')
read2 = gzip.open(read2,'r')
i7s   = gzip.open(i7s,'r')
i5s   = gzip.open(i5s,'r')

while True:
    if total % 1000 == 0:
        sys.stderr.write("Clusters examined: %s; barcodes found: %s; PCR dupes ID'd: %s\r"%(total,bcoded,dupes))
    i7header = i7s.readline()
    if not i7header:
        break
    i7seq   = i7s.readline().strip()
    i7plus  = i7s.readline()
    i7phred = i7s.readline()
    total   += 1
    trubc   = i7seq
    goahead = False
    # check if the i7seq is represented in the barcode list
    for barcode in amb_barcodes:
        if i7seq == barcode:
            goahead = True
            bcoded  += 1
            break
        else:
            for amb in amb_barcodes[barcode]:
                if i7seq == amb:
                    trubc   = barcode
                    goahead = True
                    bcoded  += 1
                    break
    i5header = i5s.readline()
    i5seq    = i5s.readline().strip()
    i5plus   = i5s.readline()
    i5phred  = i5s.readline()
    r1header = read1.readline()
    r1seq    = read1.readline().strip()
    r1plus   = read1.readline()
    r1phred  = read1.readline()
    r2header = read2.readline()
    r2seq    = read2.readline().strip()
    r2plus   = read2.readline()
    r2phred  = read2.readline()
    if goahead == False:
        continue
    passed += 1
    # OPEN TARGET FILES AND WRITE EVERYTHING OUT!
    samplename = barcodes[trubc]
    barcode_cnts[trubc] += 1
    r1out      = gzip.open(samplename+'.1.fastq.gz','a')
    r1out.write(r1header+r1seq+'\n+\n'+r1phred)
    r1out.close()
    r2out      = gzip.open(samplename+'.2.fastq.gz','a')
    r2out.write(r2header+r2seq+'\n+\n'+r2phred)
    r2out.close()
    i7out      = gzip.open(samplename+'.i7.fastq.gz','a')
    i7out.write(i7header+i7seq+'\n+\n'+i7phred)
    i7out.close()
    i5out      = gzip.open(samplename+'.i5.fastq.gz','a')
    i5out.write(i5header+i5seq+'\n+\n'+i5phred)
    i5out.close()
    
sys.stderr.write("\ntotal reads: %s\n"%(total))
sys.stderr.write("barcoded reads: %s\n"%(bcoded))
sys.stderr.write("PCR duplicates: %s\n"%(dupes))
sys.stderr.write("Reads kept: %s\n"%(passed))

sys.stderr.write("--------------------\n")
sys.stderr.write("barcode\tsample\tclusters\n")
for barcode in barcodes:
    sys.stderr.write("%s\t%s\t%s\n"%(barcode,barcodes[barcode],barcode_cnts[barcode]))
