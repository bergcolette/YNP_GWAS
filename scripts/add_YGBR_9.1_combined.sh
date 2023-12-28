mainDir="/scratch/colette/demux_novogene_lane_2023/bams/gvcfs"
genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fa"

java -jar ~/resources/packages/gatk-4.2.6.1/gatk-package-4.2.6.1-local.jar  CombineGVCFs \
   -R ${genome} \
   --variant /scratch/colette/demux_novogene_lane_2023/YNP_GWAS/scripts/YNP_WGS_allCombined.g.vcf.gz \
	--variant ${mainDir}/YGBR_9.1_WGS_AHQTv1.g.vcf.gz \
-O YNP_WGS_allCombined_YGBR_:wq9.1_included.g.vcf.gz
