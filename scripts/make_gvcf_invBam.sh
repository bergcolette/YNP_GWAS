mainDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/scripts"
genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fa"

list="ATTU_GUT_chr05_inv.genic.bam 
CACG6_GUT_chr05_inv.genic.bam
KOOT_NAS_chr05_inv.genic.bam 
SHG_GUT_chr05_inv.genic.bam
SRR071996_chr05_inv.genic.bam
NRM_NAS_chr05_inv.genic.bam
PED5_GUT_chr05_inv.genic.bam
REM8_GUT_chr05_inv.genic.bam
SILF_COR_chr05_inv.genic.bam
SLP_GUT_chr05_inv.genic.bam
"


for i in ${mainDir}/${list};
do java -jar ~/resources/packages/gatk-4.2.6.1/gatk-package-4.2.6.1-local.jar HaplotypeCaller \
-R ${genome} \
-I $i \
-O ${i:0:-4}.g.vcf.gz \
--heterozygosity 0.05 \
--ERC GVCF;
done
