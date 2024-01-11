# this is R scripts for analysing inbred line genomic data 

# loading my libraryes
library(hierfstat)
library(adegenet)
library(vcfR)
library(dplyr)
library(tidyverse)
library(ggplot2)

setwd("~/Documents/UMontana/Research/YNP/YNP_GWAS/")

# read in vcf / convert to genind format 
YNP_inbredLines <- read.vcfR("YNP_thinned_biallelic.recode.vcf")

# convert to genind 
YNP_inbredLines_genind <- vcfR2genind(YNP_inbredLines)


# first changing the names because the vcf names are way too long 
#indv_info <- read.csv("YNP_names.csv")

#rem <- filter(indv_info, keep == 0)
#indNames(YNP_inbredLines_genind) <- indv_info$names

# adding in population 
#pop(YNP_inbredLines_genind) <- indv_info$clust

# remove some of the individuals 
#removeInd <- rem$names

#data <- YNP_inbredLines_genind[!row.names(YNP_inbredLines_genind@tab) %in% removeInd]
#data
#rem
data <- YNP_inbredLines_genind
# nas aren't allowed (annoying, so replacing)

YNP_for_PCA <- tab(data,
                              NA.method="mean")

# run a PCA to see if it fits expectations / matches geography 
pca.YNP <- dudi.pca(YNP_for_PCA,
                    center=TRUE)

# add names & plot 
s.label(pca.YNP$li)

dat <- pca.YNP$li
write.csv(dat, "PC_axes.csv")

ggplot(dat, aes(x=Axis1, y=Axis2)) + geom_point() 

+ 
  geom_label(label=rownames(dat), 
nudge_x = 0.25, nudge_y = 0.25)

#rownames(dat)

# add a plot with the populations 
s.class(pca.YNP$li, fac=pop(data),
        col=transp(funky(15),.6),
        axesel=FALSE, cstar=0, cpoint=3)


# making a relatedness heat map 

rel <- read.csv("~/Documents/UMontana/Research/YNP/YNP_GWAS/pc_relate.csv")

ggplot(rel, aes(x=i.s, y=j.s,
                fill=kin)) + geom_tile() +
  scale_fill_gradient2(low="blue", high="red") +
  theme(axis.text.x = element_text(angle=90),
        axis.text = element_text(size=8))



# calculating LD 

LD_chr05 <- read.csv("YNP_chr05_genic_thin.geno.ld", sep="\t")
LD_chr04 <- read.csv("YNP_chr04_genic_thin.geno.ld", sep="\t")

LD_chr07 <- read.csv("YNP_chr07_genic_thin.geno.ld", sep="\t")
LD_chr08 <- read.csv("YNP_chr08_genic_thin.geno.ld", sep="\t")


LD_chr05 <- mutate(LD_chr05, dist = POS2 - POS1)
#lheatmap(rel)

ggplot(filt_LD_chr05, aes(x=dist, y=R.2)) + geom_point() + geom_smooth()

filt_LD_chr05 <- filter(LD_chr05, R.2 != "NaN")

ggplot(filt_LD_chr06, aes(x=R.2)) + geom_histogram()



ggplot(filt_LD_chr05, aes(x=as.factor(POS1), y=as.factor(POS2),
                fill=R.2, col=R.2)) + geom_tile()  +
  scale_fill_gradient2(low="blue", high="red") +
  scale_color_gradient2(low="blue", high="red") +
  theme(axis.text.x = element_text(angle=90),
        axis.text = element_text(size=8))

dat <- aggregate(filt_LD_chr05$POS1, list(filt_LD_chr05$R.2),
          mean)

ggplot(filter(dat, Group.1 > .1), aes(x=x, 
                y=Group.1)) + geom_point() + 
  geom_smooth()
#+
#  theme(axis.text.x = element_text(angle=90),
#        axis.text = element_text(size=8))








