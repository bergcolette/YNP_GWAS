#calculating relatedness using vcftools 2 methods. 
# relatedness is the unadjusted Ajk statistic 
# relatedness2 is from Manichaikul 2010

#vcftools --vcf YNP_WholeGenome_stringent.recode.vcf --out YNP_WholeGenome_stringent --relatedness

vcftools --vcf YNP_WholeGenome_stringent.recode.vcf --out YNP_WholeGenome_stringent --relatedness2
