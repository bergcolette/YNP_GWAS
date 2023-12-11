mainDir="/scratch/colette/demux_novogene_lane_2023/bams"

for i in ${mainDir}/*.rmdup.bam; 

do samtools view -b $i "Chr_06:22270070-22876233" > ${i:0:-32}_WGS_AHQTv1_chr06end.bam;
done
