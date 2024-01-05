vcftools --gzvcf YNP_WGS_allCombined_1.04.vcf.gz \
--minDP 3 \
--chr Chr_01 \
--thin 150 \
--max-missing .8 \
--minQ 29 \
--min-alleles 2 \
--out YNP_WholeGenome_stringent \
--recode
