dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --gzvcf ${dataDir}/YNP_WGS_allSites.vcf.gz \
--chr Chr_05 \
--from-bp 18000000 \
--out ${dataDir}/YNP_allSites_chr05_end \
--recode 

vcftools --gzvcf ${dataDir}/YNP_WGS_allSites.vcf.gz \
--chr Chr_06 \
--from-bp 20000000 \
--out ${dataDir}/YNP_allSites_chr06_end \
--recode 

