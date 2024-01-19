
#samtools view ATTU_GUT.bam Chr_05 -b -o ATTU_GUT_chr05.bam 

#samtools view GUT5.bam Chr_05 -b -o GUT5_chr05.bam 

#samtools view NRM_NAS.bam Chr_05 -b -o NRM_NAS_chr05.bam 

#samtools view SHG_GUT.bam Chr_05 -b -o SHG_GUT_chr05.bam 

#samtools view SRR071996.bam Chr_05 -b -o SRR071996_chr05.bam 


#samtools view ATTU_GUT_chr05.bam Chr_05:19300000 -o ATTU_GUT_chr05_inv.bam 
#samtools view GUT5_chr05.bam Chr_05:19300000 -o GUT5_chr05_inv.bam 
#samtools view NRM_NAS_chr05.bam  Chr_05:19300000 -o NRM_NAS_chr05_inv.bam 
#samtools view SHG_GUT_chr05.bam  Chr_05:19300000 -o SHG_GUT_chr05_inv.bam 
#samtools view SRR071996_chr05.bam  Chr_05:19300000 -o SRR071996_chr05_inv.bam 



#samtools view ATTU_GUT.bam Chr_05:19300000 -b -o ATTU_GUT_chr05_inv.bam 

#samtools view GUT5.bam Chr_05:19300000 -b -o GUT5_chr05_inv.bam 

#samtools view NRM_NAS.bam Chr_05:19300000 -b -o NRM_NAS_chr05_inv.bam 

#samtools view SHG_GUT.bam Chr_05:19300000 -b -o SHG_GUT_chr05_inv.bam 

#samtools view SRR071996.bam Chr_05:19300000 -b -o SRR071996_chr05_inv.bam 

for i in *inv.bam; 
do samtools view $i -L /home/colette_berg/resources/reference_genomes/AHQT/AHQTv1_genes.bed -b -o ${i:0:-4}.genic.bam;
done
