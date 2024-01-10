# make vcfs for each chromosome

list="01 02 03 04 05 06 07 08 09 10 11 12 13 14"
dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

for i in $list;

do 

vcftools --gzvcf ${dataDir}/YNP_genic_77.recode.vcf \
--chr Chr_${i} \
--out ${dataDir}/YNP_chr${i}_genic \
--recode;

done
