# this is a script documenting the pop gen analyses of the vcf 

# naming the data 'dat'
dat="/path/to/vcf.vcf"
prefix="desired_prefix"
windowSize=80

# calculating heterozygosity for each indv
# they should all be pretty heterozygous but i expect the nonthermal perennials to retain more heterozygosity than the thermal annuals 

--vcftools --vcf ${dat} --out ${prefix} --het 

# calculating TajimaD (a scan for selection -- looking for sweeps in sd6/out6 region and possibly the chr5 inversion?

--vcftools --vcf ${dat} --out ${prefix} --TajimaD ${windowSize}

# calculating pairwise pi. this is going to take a long time and will need a different vcf -- an all sites vcf instead of just hte variants 
# commenting out this command for now because probably won't run it at the same time as the others 

#--vcftools --vcf all/sites/vcf --out all_sites_refix --window-pi ${windowSize}

# calculating LD. still need to figure out what the min and max window sizes will be 

--vcftools --vcf ${dat} --out ${prefix} --geno-r2 --ld-window-min "" --ld-window ""
