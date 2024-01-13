# separating into groups by inversion 5 type 

dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"


vcftools --vcf ${dataDir}/YNP_chr05_genic.recode.vcf \
--chr Chr_05 \
--keep keep_inv5_group1.txt \
--max-missing .8 \
--maf .05 \
--out ${dataDir}/YNP_inv5_group1 \
--recode 


vcftools --vcf ${dataDir}/YNP_chr05_genic.recode.vcf \
--chr Chr_05 \
--keep keep_inv5_group2.txt \
--max-missing .8 \
--maf .05 \
--out ${dataDir}/YNP_inv5_group2 \
--recode 

