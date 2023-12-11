mainDir="/home/colette_berg/YNP/YNP_for_alignment"
genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fasta"

list="UGB11-3"

for i in ${list}
do echo i; bash YNP4alignment.sh ${mainDir}/${i} ${genome} ${mainDir}/${i} 12; 
done
