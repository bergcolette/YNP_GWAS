# this is a script for listing the top barcode combinations in 
# a fastq file. here i'm looking that up for the MUC/Mouse/brewfil lane. 

gunzip -c  ~/novogene_2023_lane/01.RawData/MUC/MUC_CKDL230037751-1A_22FF27LT3_L7_1.fq.gz | grep "^@lh00134" | awk -F: '{print $NF}' | sort | uniq -c | sort -nr > MUC_lane_barcode_count.txt
