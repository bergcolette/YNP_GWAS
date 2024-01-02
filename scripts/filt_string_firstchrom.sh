# filtering the vcf to just 1 chrom to make handling in R easier 

vcftools --vcf YNP_WholeGenome_stringent.recode.vcf --chr Chr_01 --out YNP_WholeGenome_stringent_chr01 --recode
