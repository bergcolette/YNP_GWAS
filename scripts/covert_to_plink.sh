# gemma requires files in binary ped format, converting my vcf here
# but in order to convert you need a chrom map, this is my attempt to create one 

bcftools view -H YNP_WholeGenome_stringent.recode.vcf | cut -f 1 | uniq | awk '{print $0"\t"$0}' > YNP_WholeGenome.chrom-map.txt

vcftools --vcf YNP_WholeGenome_stringent.recode.vcf --out YNP_WholeGenome --plink --chrom-map YNP_WholeGenome.chrom-map.txt
