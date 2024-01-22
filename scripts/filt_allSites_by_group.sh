dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

#vcftools --vcf ${dataDir}/YNP_chr05_allSites_filt.recode.vcf \
#--keep keep_inv5_group1a.txt \
#--out YNP_chr05_group1 \
#--site-pi

#vcftools --vcf ${dataDir}/YNP_chr05_allSites_filt.recode.vcf \
#--keep keep_inv5_group2a.txt \
#--out YNP_chr05_group2 \
#--site-pi

#vcftools --vcf ${dataDir}/YNP_chr05_allSites_filt.recode.vcf \
#--keep keep_inv5_group1a.txt \
#--out YNP_chr05_group1 \
#--window-pi 50

#vcftools --vcf ${dataDir}/YNP_chr05_allSites_filt.recode.vcf \
#--keep keep_inv5_group2a.txt \
#--out YNP_chr05_group2 \
#--window-pi 50

vcftools --gzvcf ${dataDir}/YNP_WGS_allSites.vcf.gz \
--keep keep_77.txt \
--minQ 29 \
--minDP 6 \
--out ${dataDir}/YNP_allSites_filt \
--recode