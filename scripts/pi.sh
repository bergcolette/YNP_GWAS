dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_allSites_chr05_78.recode.vcf \
--out ${dataDir}/YNP_chr05_all_indvs \
--window-pi 10000 
