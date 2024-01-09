list="YGBR YHLB YLGB YLSG YMGB YOJO YSGB YUGB YVTC YWTB"
dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data" 

for i in $list;

do

vcftools --vcf ${dataDir}/YNP_WholeGenome_thinned.recode.vcf \
--keep indvs_${i}.txt \
--out ${dataDir}/YNP_thinned_${i} \
--recode 

done 