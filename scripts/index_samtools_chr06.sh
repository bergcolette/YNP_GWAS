mainDir="/scratch/colette/demux_novogene_lane_2023/bams/"

for i in ${mainDir}*.end.bam; do echo $i; samtools index $i; done
