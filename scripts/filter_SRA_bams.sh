
list="CACG6_GUT.bam
KOOT_NAS.bam
PED5_GUT.bam
REM8_GUT.bam
SILF_COR.bam
SLP_GUT.bam"

#for i in $list;

#do samtools index $i;
#samtools view $i Chr_05:19300000 -b -o  ${i:0:-4}_chr05_inv.bam;

#done

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

#for i in *inv.bam; 
#do echo $i; 
#samtools view $i -L /home/colette_berg/resources/reference_genomes/AHQT/AHQTv1_genes.bed -b -o ${i:0:-4}.genic.bam;
#done

for i in *inv.genic.bam; 
do samtools index $i 
done