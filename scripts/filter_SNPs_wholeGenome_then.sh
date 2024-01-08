vcftools --gzvcf YNP_WGS_allCombined.vcf.gz \
--minDP 3 \
--thin 150 \
--max-missing .6 \
--minQ 29 \
--min-alleles 2 \
--out YNP_WholeGenome_stringent \
--recode
