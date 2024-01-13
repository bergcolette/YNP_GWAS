dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_genic_renamed.recode.vcf \
--chr Chr_05 \
--from-bp 20500000 \
--out ${dataDir}/YNP_genic_inv5 \
--recode