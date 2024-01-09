vcftools --gzvcf YNP_WGS_chr06end_inbred.vcf.gz \
--minDP 6 \
--max-missing .6 \
--min-alleles 2 \
--out YNP_WGS_chr06end_inbred \
--recode
