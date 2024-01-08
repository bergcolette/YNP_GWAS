# re-running the relatedness calcs, but including only inbreds (removing the other WGS lines)
# also, removing LMC -- it's micranthus! that was throwing off the data 

vcftools --vcf YNP_WholeGenome_stringent.recode.vcf \
--keep retain_indvs_rel.txt \
--out YNP_stringent_chr01_filtIndv \
--relatedness2 

vcftools --vcf YNP_WholeGenome_stringent.recode.vcf \
--keep retain_indvs_rel.txt \
--out YNP_stringent_chr01_filtIndv \
--relatedness
