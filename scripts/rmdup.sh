mainDir="/scratch/colette/demux_novogene_lane_2023/bams"

for i in ${mainDir}/*bam; do java -jar /home/thom_nelson/opt/picard.jar MarkDuplicates \
    INPUT=${i} OUTPUT=${i:0:-4}.rmdup.bam \
    METRICS_FILE=${i:0:-4}.rmdup_metrics_fix \
    VALIDATION_STRINGENCY=LENIENT REMOVE_DUPLICATES=TRUE;
done
