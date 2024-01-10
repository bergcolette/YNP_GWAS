# making a vcf with the correct individuals, then will rename to the right names 
dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

# first keeping the right individuals 
vcftools --vcf ${dataDir}/YNP_genic.recode.vcf --keep retain_indvs_prune.txt --out ${dataDir}/YNP_genic_77 --recode

# then renaming with bcftools 
bcftools reheader -s correct_names_77.txt -o ${dataDir}/YNP_genic_renamed.recode.vcf ${dataDir}/YNP_genic_77.recode.vcf 