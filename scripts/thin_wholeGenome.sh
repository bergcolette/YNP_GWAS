dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/"

vcftools --vcf YNP_filt_renamed.vcf --thin 10000 --out ${dataDir}/YNP_WholeGenome_thinned --recode 