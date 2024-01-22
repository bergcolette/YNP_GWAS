dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

#vcftools --vcf ${dataDir}/YNP_allSites_filt_chr05.recode.vcf \
#--out YNP_chr05_length \
#--window-pi 50 


vcftools --vcf ${dataDir}/YNP_allSites_filt_chr05.recode.vcf \
--keep keep_inv5_group1a.txt \
--out YNP_chr05_group1 \
--window-pi 50

vcftools --vcf ${dataDir}/YNP_allSites_filt_chr05.recode.vcf \
--keep keep_inv5_group2a.txt \
--out YNP_chr05_group2 \
--window-pi 50