mainDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/data/diversity"
genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fasta"

list="DUN_GUT
MED84_GUT
SOL_GUT"

for i in ${list}
do echo i; bash YNP4alignment.sh ${mainDir}/${i} ${genome} ${mainDir}/${i} 12;
done