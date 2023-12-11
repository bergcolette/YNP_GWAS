## this is a script for demultiplexing the YNP / brewerii / filii lane
## i'm using "demuxbyname" from the package bbmap which is in the resources folder

mainDir="/home/colette_berg/novogene_2023_lane/01.RawData/YNP"

~/resources/packages/bbmap/demuxbyname.sh \
    prefixmode=f \
    in=${mainDir}/YNP_CKDL230037753-1A_22FF27LT3_L6_1.fq.gz  \
    in2=${mainDir}/YNP_CKDL230037753-1A_22FF27LT3_L6_2.fq.gz \
    out=%_R1_001.fastq.gz \
    out2=%_R2_001.fastq.gz \
    outu=Undetermined_R1_001.fastq.gz \
    outu2=Undetermined_R2_001.fastq.gz \
    names=/scratch/colette/demux_novogene_lane_2023/YNP_barcodes_8bp.txt
