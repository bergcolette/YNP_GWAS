dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

#vcftools --vcf YNP_chr05_group1.recode.vcf \
#--out ${dataDir}/YNP_chr05_group1 \
#--TajimaD 100

#vcftools --vcf YNP_chr05_group2.recode.vcf \
#--out ${dataDir}/YNP_chr05_group2 \
#--TajimaD 100

#vcftools --vcf ${dataDir}/YNP_chr05_allSites_filt.recode.vcf \
##--out ${dataDir}/YNP_chr05_all \
#--TajimaD 100

#vcftools --vcf YNP_chr05_group1.recode.vcf \
#--out ${dataDir}/YNP_chr05_group1 \
#--site-pi

vcftools --vcf YNP_chr05_group2.recode.vcf \
--out ${dataDir}/YNP_chr05_group2 \
--site-pi 

vcftools --vcf ${dataDir}/YNP_chr05_allSites_filt.recode.vcf \
--out ${dataDir}/YNP_chr05_all \
--site-pi 



