dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_genic_renamed.recode.vcf \
--chr Chr_06 \
--from-bp 22750000 \
--out ${dataDir}/YNP_genic_out6 \
--012