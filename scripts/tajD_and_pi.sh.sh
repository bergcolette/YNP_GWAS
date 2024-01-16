dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf YNP_chr05_group1.recode.vcf \
--out ${dataDir}/YNP_chr05_group1 \
--TajimaD 100

vcftools --vcf YNP_chr05_group2.recode.vcf \
--out ${dataDir}/YNP_chr05_group2 \
--TajimaD 100

vcftools --vcf YNP_chr05_group1.recode.vcf \
--out ${dataDir}/YNP_chr05_group1 \
--window-pi 100 

vcftools --vcf YNP_chr05_group2.recode.vcf \
--out ${dataDir}/YNP_chr05_group2 \
--window-pi 100



