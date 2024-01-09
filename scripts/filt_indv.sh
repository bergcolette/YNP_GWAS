# making a vcf with the correct individuals, then will rename to the right names 
dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"

vcftools --vcf ${dataDir}/YNP_WholeGenome_stringent.recode.vcf --keep retain_indvs_rel.txt --out ${dataDir}/YNP_filt_86 --recode