while IFS=$'\t' read -r column1 column2; do
    mv ${column1}_R1_001.fastq.gz ${column2}_${column1}_R1_001.fastq.gz;
    mv ${column1}_R2_001.fastq.gz ${column2}_${column1}_R2_001.fastq.gz;
done < "MUC_barcode_names.txt"
