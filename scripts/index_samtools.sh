mainDir="/scratch/colette/demux_novogene_lane_2023/bams/preInbredLines"

for i in ${mainDir}/*.bam; do echo $i; samtools index $i; done
