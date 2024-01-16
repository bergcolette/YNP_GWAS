dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

# first filtering to the indvs I want 
vcftools --vcf ${dataDir}/YNP_allSites_chr05_end.recode.vcf \
--keep retain_indvs_78.txt \
--out ${dataDir}/YNP_allSites_chr05_78 \
--recode

# then re-headering so they have proper names 
bcftools reheader -s ${dataDir}/correct_names_77.txt -o ${dataDir}/YNP_chr05_allSites_renamed.vcf ${dataDir}/YNP_allSites_chr05_78.recode.vcf