# this is R scripts for analysing inbred line genomic data 

# loading my libraryes
library(hierfstat)
library(adegenet)
library(vcfR)
library(dplyr)
library(tidyverse)
library(ggplot2)


# read in vcf / convert to genind format 
YNP_inbredLines <- read.vcfR("YNP_WholeGenome_stringent_chr01.recode.vcf")

# convert to genind 
YNP_inbredLines_genind <- vcfR2genind(YNP_inbredLines)


# first changing the names because the vcf names are way too long 
indv_info <- read.csv("YNP_names.csv")
indNames(YNP_inbredLines_genind) <- indv_info$names

# adding in population 
pop(YNP_inbredLines_genind) <- indv_info$clust

# remove some of the individuals 
removeInd <- c("YLRC_2.3", "LMC3-1", "LMC2-3",
               "RCT433", "PVS127", "PVS300", "PVS329",
               "UGB11-3", "HLB4-2", 
               "AHQT_1.2", "AHQNT",
               "YVTC_9.3")

data <- YNP_inbredLines_genind[!row.names(YNP_inbredLines_genind@tab) %in% removeInd]
#data

# nas aren't allowed (annoying, so replacing)

YNP_for_PCA <- tab(data,
                              NA.method="mean")

# run a PCA to see if it fits expectations / matches geography 
pca.YNP <- dudi.pca(YNP_for_PCA,
                    center=TRUE)

# add names & plot 
s.label(pca.YNP$li)

# add a plot with the populations 
s.class(pca.YNP$li, fac=pop(data),
        col=transp(funky(15),.6),
        axesel=FALSE, cstar=0, cpoint=3)


# making a relatedness heat map 

rel <- read.csv("YNP_stringent_chr01_filtIndv.relatedness", sep="\t")

ggplot(rel, aes(x=INDV2, y=INDV1,
                fill=RELATEDNESS_AJK)) + geom_tile() +
  scale_fill_gradient2(low="blue", high="red")


heatmap(rel)

rel$INDV1
