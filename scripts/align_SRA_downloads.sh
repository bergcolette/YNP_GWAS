mainDir="/scratch/colette/demux_novogene_lane_2023/YNP_GWAS/scripts"
genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fasta"

list="PED5_GUT
SILF_COR
CACG6_GUT
KOOT_NAS
REM8_GUT
SLP_GUT
CSS4_GUT
LMC24_GUT
SCH_GUT
SOL_GUT
DUN_GUT
MED84_GUT
EAG_COR
SILC_COR"

for i in ${list}
do echo i; bash YNP4alignment.sh ${mainDir}/${i} ${genome} ${mainDir}/${i} 12;
done