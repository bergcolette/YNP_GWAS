for i in *bam; do java -jar /home/thom_nelson/opt/picard.jar MarkDuplicates \
    INPUT=${i} OUTPUT=${i}.rmdup.bam \
    METRICS_FILE=${i}.rmdup_metrics_fix \
    VALIDATION_STRINGENCY=LENIENT REMOVE_DUPLICATES=TRUE;
done
