# make vcfs for each chromosome

list="01 02 03 04 05 06 07 08 09 10 11 12 13 14"
dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --gzvcf ${dataDir}/YNP_WGS_allCombined.vcf.gz \
--bed /home/colette_berg/resources/reference_genomes/AHQT/AHQTv1_genes.bed \
--keep retain_indvs_rel.txt \
--minDP 3 \
--thin 150 \
--max-missing .6 \
--minQ 29 \
--min-alleles 2 \
--out ${dataDir}/YNP_genic \
--recode

for i in $list;

do 

vcftools --gzvcf ${dataDir}/YNP_genic.recode.vcf \
--chr Chr_${i} \
--out ${dataDir}/YNP_${i}_genic \
--recode;

done