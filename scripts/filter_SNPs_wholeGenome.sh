vcftools --gzvcf YNP_WGS_allCombined_withYGBR_9.1.vcf.gz \
--minDP 6 \
--max-missing .6 \
--min-alleles 2 \
--out YNP_WholeGenome \
--recode
