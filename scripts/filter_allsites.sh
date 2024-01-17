dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_allSites_chr05_end.recode.vcf \
--minQ 29 \
--minDP 8 \
--out ${dataDir}/YNP_chr05_allSites_filt \
--recode 
