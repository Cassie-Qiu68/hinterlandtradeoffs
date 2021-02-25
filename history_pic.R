rm(list=ls())

# import data
# install.packages("readxl")
library(readxl)
setwd ("G:\\LCC_Guizhou\\Foodsecurity_Submission_2\\code") 
crop_yield<- read_excel("History_yield_countylevel.xlsx",
                        sheet ="Sheet1")
# boxplot
library(ggplot2)
history_pic <- ggplot(crop_yield, aes(x=Year,Yield))+
  geom_boxplot(aes(fill=Year),outlier.colour = NA)+
  guides(fill=FALSE)+
  ylim(0,50)+
  theme_bw()
history_pic

#save image
ggsave("history_pic.pdf",width = 8, height = 5) 
