## this is is a script for demultiplexing the MUC / GoodLab lane
## i'm using "demuxbyname" from the package bbmap which is in the resources folder

# setting the working directory
mainDir="/home/colette_berg/novogene_2023_lane/01.RawData/MUC"

# running "demux by name"
# names is a file with the barcodes in it
~/resources/packages/bbmap/demuxbyname.sh \
    prefixmode=f \
	substring=t\
    in=${mainDir}/MUC_CKDL230037751-1A_22FF27LT3_L7_1.fq.gz  \
    in2=${mainDir}/MUC_CKDL230037751-1A_22FF27LT3_L7_2.fq.gz \
    out=%_R1_001.fastq.gz \
    out2=%_R2_001.fastq.gz \
    outu=MUC_Undetermined_R1_001.fastq.gz \
    outu2=MUC_Undetermined_R2_001.fastq.gz \
    names=/scratch/colette/demux_novogene_lane_2023/MUC_barcodes.txt
