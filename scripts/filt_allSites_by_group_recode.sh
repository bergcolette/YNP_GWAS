dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_chr05_allSites_renamed.vcf \
--keep keep_inv5_group1a.txt \
--max-missing .8 \
--out YNP_chr05_group1 \
--recode

vcftools --vcf ${dataDir}/YNP_chr05_allSites_renamed.vcf \
--keep keep_inv5_group2a.txt \
--max-missing .8 \
--out YNP_chr05_group2 \
--recode