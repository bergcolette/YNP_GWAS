vcftools --gzvcf YNP_WGS_allCombined_withYGBR_9.1.vcf.gz \
--minDP 6 \
--thin 150 \
--max-missing .8 \
--minQ 29 \
--min-alleles 2 \
--out YNP_WholeGenome_stringent \
--recode
