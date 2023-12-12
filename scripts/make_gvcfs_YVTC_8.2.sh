mainDir="/scratch/colette/demux_novogene_lane_2023/bams"
genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fa"

for i in ${mainDir}/YVTC_8.2*.rmdup.bam;
do java -jar ~/resources/packages/gatk-4.2.6.1/gatk-package-4.2.6.1-local.jar HaplotypeCaller \
-R ${genome} \
-I $i \
-O ${i:0:-15}_WGS_AHQTv1.g.vcf.gz \
--heterozygosity 0.05 \
--ERC GVCF;
done
