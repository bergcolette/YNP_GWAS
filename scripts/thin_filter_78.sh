dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_WholeGenome_thinned.recode.vcf \
--keep correct_names_78.txt \
--chr Chr_05 \
--from-bp 19300000 \
--out YNP_thinned_78_chr05end \
--recode 