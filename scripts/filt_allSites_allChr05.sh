dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"


vcftools --gzvcf ${dataDir}/YNP_WGS_allSites.vcf.gz \
--keep keep_77.txt \
--chr Chr_05 \
--minQ 29 \
--minDP 6 \
--out ${dataDir}/YNP_allSites_filt_chr05 \
--recode


#vcftools --vcf ${dataDir}/YNP_allSites_filt_chr05.recode.vcf \
#--keep keep_inv5_group2a.txt \
#--out YNP_allSites_group2 \
#--window-pi 50

#vcftools --vcf ${dataDir}/YNP_allSites_filt_chr05.recode.vcf \
#--keep keep_inv5_group1a.txt \
#--out YNP_allSites_group1 \
#--window-pi 50

#vcftools --vcf ${dataDir}/YNP_allSites_filt_chr05.recode.vcf \
#--out YNP_allSites_all \
#--window-pi 50