# re-running the relatedness calcs, but including only inbreds (removing the other WGS lines)
# also, removing LMC -- it's micranthus! that was throwing off the data 

vcftools --vcf YNP_WholeGenome_stringent_chr01.recode.vcf \
--keep retain_indvs.txt \
--out YNP_stringent_chr01_filtIndv \
--relatedness2 
