if (!require("gplots")) {
  install.packages("gplots", dependencies = TRUE)
  library(gplots)
}
if (!require("RColorBrewer")) {
  install.packages("RColorBrewer", dependencies = TRUE)
  library(RColorBrewer)
}

#set wd
setwd("C:/Users/bag019/Desktop/R Programs/GEMS")
#read in csv file and get data
data <- read.csv("CHS - Z.csv")
#set the color palette
my_palette <- colorRampPalette(c( "white", "red" ))(n = 142)
#data to matrix                 [row , col]
othermatrix <- na.pass(data.matrix(data))
#z score: z = x-mean/stdev
heatmap.2( othermatrix,
           labRow = data[,1],
           main = "Double Normilization to 100 and Zscore", # heat map title
           trace="none",         # turns off trace lines inside the heat map
           margins =c(12,9),     # widens margins around plot
           col=my_palette)       # use on color palette defined earlier
