vcftools --gzvcf YNP_WGS_chr06end_all.vcf.gz \
--minDP 3 \
--max-missing .5 \
--min-alleles 2 \
--out YNP_WGS_chr06end_all \
--recode
