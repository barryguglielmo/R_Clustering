##set working dir
setwd("C:/Users/bag019/Desktop")
## read csv
data <- read.csv("AVERAGES CHS.csv", header = T)
## data to matrix
data_matrix <- as.matrix(data[1:162,])
data_scaled <- scale(data.matrix)
## heat map
heatmap(data_matrix, cexRow = 0.5, cexCol = 0.5, scale = "none", trace = "none")