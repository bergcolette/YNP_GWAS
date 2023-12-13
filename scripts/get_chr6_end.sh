mainDir="/scratch/colette/demux_novogene_lane_2023/bams"

for i in ${mainDir}/YGBR_12.1*.bam; 

do samtools view -b $i "Chr_06:22270070-22876233" > ${i:0:-4}_chr06end.bam;
done
