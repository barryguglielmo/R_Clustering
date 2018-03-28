#Get Hexbin Library
library(hexbin)
#read csv file
data <- read.csv(file.choose(), header = T)
#set x and y (column 1 is x's column 2 is y's)
x <- data[[1]]
y <- data[[2]]
#Plot it
plot(hexbin(x, y))
