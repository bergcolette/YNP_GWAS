dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_allSites_filt_chr05_end.recode.vcf \
--out bin_example10KB \
--window-pi 10000