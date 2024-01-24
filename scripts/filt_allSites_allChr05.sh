dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"


vcftools --vcf ${dataDir}/YNP_allSites_filt_chr05.recode.vcf \
--keep keep_77.txt \
--chr Chr_05 \
--bed /home/colette_berg/resources/reference_genomes/AHQT/AHQTv1_genes.bed \
--out ${dataDir}/YNP_allSites_genic \
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