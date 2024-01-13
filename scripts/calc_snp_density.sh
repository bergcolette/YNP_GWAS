
dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_inv5_group1.recode.vcf \
--SNPdensity 15000 \
--out ${dataDir}/YNP_inv5_group1

vcftools --vcf ${dataDir}/YNP_inv5_group2.recode.vcf \
--SNPdensity 15000 \
--out ${dataDir}/YNP_inv5_group2