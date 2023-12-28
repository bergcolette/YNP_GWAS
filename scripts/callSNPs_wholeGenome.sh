genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fa"

java -jar ~/resources/packages/gatk-4.2.6.1/gatk-package-4.2.6.1-local.jar  GenotypeGVCFs \
   -R ${genome} \
   -V YNP_WGS_allCombined_YGBR_:wq9.1_included.g.vcf.gz \
   --heterozygosity 0.05 \
   -O YNP_WGS_allCombined_withYGBR_9.1.vcf.gz
