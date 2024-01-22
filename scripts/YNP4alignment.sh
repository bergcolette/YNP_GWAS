#this script is adapted from Findlay Finseth's processing script
#   originally found at: carnation.dbs.umt.edu:/home/findley_finseth/findley_carnation/Reseq/fastqs_to_bam_PE_mem.sh
# This script takes two fastq files and makes them into bams
# This script takes ZIPPED fastq files
# This script takes PAIRED END fastqs that need to be matched	

### CHECK IF ARGUMENTS INCLUDED ON COMMAND LINE

if [ -z $1 ] && [ -z $2 ] && [ -z $3 ] && [ -z $4 ]
then
    echo ""
    echo "Usage: fastqs_to_bam.sh /file/path/prefix /path/to/genome.fa [readGroup] [threads]"
    echo ""
    exit
fi

### CHECK IF A SAMPLE FILE WAS PROVIDED

filename=$1
if [ -z $filename ]
then
    echo "You must specify a path to the file prefix: /path/to/sample[.1.fastq.gz] (omit stuff in brackets). Exiting..."
    exit
fi

### CHECK IF GENOME FASTA FILE WAS PROVIDED
genomefa=$2
if [ -z $genomefa ]
then
    echo "You need to specify a path to the genome fasta file! Exiting..."
    exit
fi
if [ ! -f $genomefa ]
then
    echo "Specified genome file does not exist. Typos much? Exiting..."
    exit
fi

### CHECK IF A READ GROUP IS SPECIFIED. IF NOT, DEFAULT TO FILE PREFIX
rdgrp=$3
if [ -z $rdgrp ]
then
    rdgrp=$(basename $filename)
fi

### CHECK IF THE NUMBER OF THREADS IS SPECIFIED. IF NOT, DEFAULT OT 1
t=$4
if [ -z $t ]
then
    t=1
fi

echo $filename
echo $genomefa
echo $rdgrp
echo $t

 	#gunzip ${filename}_R1_001.fastq.gz
	#gunzip ${filename}_R2_001.fastq.gz
	#bunzip2 ${filename}.1.fastq.bz2
	#bunzip2 ${filename}.2.fastq.bz2

	# remove adapters and low quality seq
	echo "Trimming low quality reads and adapters from ${filename}"
	java -jar /home/thom_nelson/opt/Trimmomatic-0.35/trimmomatic-0.35.jar PE \
	     -threads $t -phred33 ${filename}_1.fastq ${filename}_2.fastq \
	     ${filename}.1.paired.fastq ${filename}.1.unpaired.fastq \
	     ${filename}.2.paired.fastq ${filename}.2.unpaired.fastq \
	     ILLUMINACLIP:/home/thom_nelson/bin/resources/Illumina/Many.TruSeq.PE.fa:2:20:10:4 \
	     LEADING:3 TRAILING:3 SLIDINGWINDOW:4:15 MINLEN:36  

	### map reads to the genome
	echo "Aligning ${filename} with bwa mem"
	bwa mem -t $t ${genomefa} ${filename}.1.paired.fastq ${filename}.2.paired.fastq > ${filename}.sam 

	### quality filter and sort sam, making a bam file
	echo "Making bam, quality filtering, and sorting for ${filename}"
	samtools view -bS  ${filename}.sam -q 29 > ${filename}.bam
	samtools sort -T ${filename} -o ${filename}.sort.bam ${filename}.bam
	echo "Getting stats on ${filename}.sort.bam" 
	samtools flagstat ${filename}.sort.bam > ${filename}.sortedbam_flagstats # get some stats on the bam file

	### Add read groups
	echo "Adding read groups to ${filename}"
	java -jar /home/thom_nelson/opt/picard.jar AddOrReplaceReadGroups \
	     INPUT=${filename}.sort.bam OUTPUT=${filename}.RG.sort.bam \
	     RGSM=${rdgrp} RGLB=NEBNext RGPL=Illumina RGPU=UNKNOWN VALIDATION_STRINGENCY=LENIENT # adds read groups

	### Index BAM files
	echo "Indexing ${filename}"
	samtools index ${filename}.RG.sort.bam
	
	### Make a targets file for remapping around indels
	echo "Making targets file for ${filename}"
	java -jar /home/thom_nelson/opt/GenomeAnalysisTK.jar \
	     -T RealignerTargetCreator -R ${genomefa} \
	     -I ${filename}.RG.sort.bam -o ${filename}.RG.sort.bam.intervals

	### Use GATK to realign reads around potential indels
	echo "Realigning around indels for ${filename}"
	java -jar /home/thom_nelson/opt/GenomeAnalysisTK.jar \
	     -T IndelRealigner -R ${genomefa} \
	     -I ${filename}.RG.sort.bam -targetIntervals ${filename}.RG.sort.bam.intervals \
	     -o ${filename}.RG.sort.bam.realigned

	### Clean up, round 1
	echo "Renaming, zipping up, indexing, etc. for ${filename}"
	mv ${filename}.RG.sort.bam.realigned ${filename}.unsorted.bam # rename bam file
	samtools sort -T ${filename} -o ${filename}.bam ${filename}.unsorted.bam
	samtools flagstat ${filename}.bam > ${filename}.flagstats #get some stats on final bam
	samtools index ${filename}.bam #index final bam
	#gzip -9 ${filename}_R1_001.fastq.gz #zip files
	#gzip -9 ${filename}_R2_001.fastq.gz

	### Clean up, round 2
	# echo "Removing intermediate files"
	rm ${filename}.sam
	rm ${filename}*paired*
	rm ${filename}*sort*
 	rm *rmdup_metrics_fix*

