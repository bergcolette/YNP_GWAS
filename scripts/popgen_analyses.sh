# this is a script documenting the pop gen analyses of the vcf 

# naming the data 'dat'
dataDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data"
vcf="YNP_pruned.recode.vcf"
prefix="YNP_analyses"
windowSize=100000

# calculating heterozygosity for each indv
# they should all be pretty heterozygous but i expect the nonthermal perennials to retain more heterozygosity than the thermal annuals 

# vcftools --vcf ${dataDir}/${vcf} --out ${dataDir}/${prefix} --het 

# calculating TajimaD (a scan for selection -- looking for sweeps in sd6/out6 region and possibly the chr5 inversion?
# Tajima's D needs to be with the same vcf as pi (pairwise nucleotide diversity )
# vcftools --vcf ${dataDir}/${vcf} --out ${dataDir}/${prefix} --TajimaD ${windowSize}

# calculating pairwise pi. this is going to take a long time and will need a different vcf -- an all sites vcf instead of just the variants 
# commenting out this command for now because probably won't run it at the same time as the others 

#--vcftools --vcf all/sites/vcf --out all_sites_refix --window-pi ${windowSize}

# calculating LD. still need to figure out what the min and max window sizes will be 

#--vcftools --vcf ${dat} --out ${prefix} --geno-r2 --ld-window-min "" --ld-window ""
