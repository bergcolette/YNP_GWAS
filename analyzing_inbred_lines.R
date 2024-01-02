# this is R scripts for analysing inbred line genomic data 

# loading my libraryes
library(hierfstat)
library(adegenet)
library(vcfR)
library(dplyr)
library(tidyverse)
library(ggplot2)




# read in vcf / convert to genind format 
YNP_inbredLines <- read.vcfR("YNP_WholeGenome_stringent.recode.vcf")

# convert to genind 
YNP_inbredLines_genind <- vcfR2genind(YNP_inbredLines)

# remove some of the individuals 

# nas aren't allowed (annoying, so replacing)

YNP_inbredLines_genind <- tab(YNP_inbredLines_genind,
                              NA.method="mean")

# run a PCA to see if it fits expectations / matches geography 
pca.YNP <- dudi.pca(YNP_inbredLines_genind,
                    center=TRUE)

# add names & plot 
s.label(pca.YNP$li)


