dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_WholeGenome_thinned.recode.vcf \
--keep retain_indvs_prune.txt \
--out ${dataDir}/YNP_pruned \
--recode 