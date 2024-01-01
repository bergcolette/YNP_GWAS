mainDir="/scratch/colette/demux_novogene_lane_2023/bams/gvcfs"
genome="/home/colette_berg/resources/reference_genomes/AHQT/Mimulus_guttatus_var_AHQT1.mainGenome.fa"

java -jar ~/resources/packages/gatk-4.2.6.1/gatk-package-4.2.6.1-local.jar  CombineGVCFs \
   -R ${genome} \
	--variant ${mainDir}/YGBR_10.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YGBR_9.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YGBR_2.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YGBR_3.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YGBR_4.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YGBR_7.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YGBR_8.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YHLB_10.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YHLB_11.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YHLB_12.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YHLB_15.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YHLB_2.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YHLB_3.4_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YHLB_6.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YHLB_9.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_1.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_16.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_18.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_19.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_20.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_21.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_22.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_23.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_24.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_25.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_26.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_29.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_3.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_31.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_4.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLGB_9.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLRC_2.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLSG_2.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLSG_4.4_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YLSG_5.4_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YMGB_1.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YMGB_10.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YMGB_13.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YMGB_6.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YOJO_1.5_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YOJO_2.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YSGB_5.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YSGB_7.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YSGB_8.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YSGB_9.4_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_18.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_20.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_21.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_22.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_23.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_25.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_27.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_29.4_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_30.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_34.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_4.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YVTC_2.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YWTB_3.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YWTB_5.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YOJO_3.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YOJO_4.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YOJO_5.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YOJO_7.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YSGB_10.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YSGB_2.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_10.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_13.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_15.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_16.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_17.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_8.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YVTC_3.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YVTC_6.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YVTC_7.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YVTC_8.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YVTC_9.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YWTB_2.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YWTB_6.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YWTB_7.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/AHQNT_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/AHQT1.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/HLB4-2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/LMC2-3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/LMC3-1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/PVS127_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/PVS300_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/PVS329_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/RCT433_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/UGB11-3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YCGP_1.2_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YGBR_12.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YOJO_8.3_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YUGB_24.1_WGS_AHQTv1.g.vcf.gz \
--variant ${mainDir}/YWTB_8.2_WGS_AHQTv1.g.vcf.gz \
    -O YNP_WGS_allCombined.g.vcf.gz
 

#java -jar ~/resources/packages/gatk-4.2.6.1/gatk-package-4.2.6.1-local.jar  GenotypeGVCFs \
 #  -R ${genome} \
  # -V YNP_WGS_combined.g.vcf.gz \
  # --heterozygosity 0.05 \
  # -O YNP_WGS_allCombined.vcf.gz
