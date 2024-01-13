dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"
genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fa"


java -jar ~/resources/packages/gatk-4.2.6.1/gatk-package-4.2.6.1-local.jar  GenotypeGVCFs \
   -R ${genome} \
   --include-non-variant-sites \
   -V ${dataDir}/YNP_WGS_allCombined.g.vcf.gz \
   --heterozygosity 0.05 \
   -O ${dataDir}/YNP_WGS_allSites.vcf.gz


