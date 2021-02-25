
#Figure5 Five main crop yield change trend during
#1960 - 2016 for global and national level and during 1990-2016 for provincial level
#plot code

rm(list=ls())
#import data
setwd ("G:\\LCC_Guizhou\\Foodsecurity_Submission_2\\code") 
Alldata <- read.csv("Comparison_yield.csv",header = T,sep=",")
Alldata <- as.data.frame(Alldata)

#plot
library(ggplot2)
windowsFonts(myFont = windowsFont("Arial"))
Yield_pic <- ggplot(Alldata, aes(x = Year, y = Yield, colour = Scale))+
  labs(x= expression ('Year'), y= expression ('Yield (×'~ 10^2 ~'kg'~ha^-1~')'))+
  scale_x_continuous(breaks = seq(1960,2020,20),element_text(color='black'))+
  theme(axis.text=element_text(size=24,family= "myFont", color = "black", face="bold"))+
  geom_point(alpha = .7) +
  geom_smooth(method=lm, size=1, alpha=0.5) +
  theme_bw()+
  theme(legend.position = "bottom")+
  theme(legend.title = element_blank())+
  facet_wrap(~Type,scales="free") 

#save plot
Yield_pic                         
ggsave("Yield_pic.pdf",width = 8, height = 5)                         
