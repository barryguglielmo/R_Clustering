if (!require("gplots")) {
  install.packages("gplots", dependencies = TRUE)
  library(gplots)
}
if (!require("RColorBrewer")) {
  install.packages("RColorBrewer", dependencies = TRUE)
  library(RColorBrewer)
}


#read in csv file and get data
my_data <- read.csv(file.choose(), header = T)
#set the color palette
my_palette <- colorRampPalette(c( "white", "red" ))(n = 142)
#select data (row, col)
selected_data <- my_data[c(2:142), c(2:156)]
#data to matrix                 [row , col]
my_matrix <- data.matrix(selected_data)
#z score: z = x-mean/stdev
#https://stat.ethz.ch/R-manual/R-devel/library/stats/html/heatmap.html
heatmap.2( my_matrix,
           Colv = FALSE,
           labRow = my_data[,1],
           main = "Double Normilization to 100 and Zscore", # heat map title
           trace="none",                                    # turns off trace lines inside the heat map
           margins =c(12,9),                                # widens margins around plot
           col=my_palette)       
