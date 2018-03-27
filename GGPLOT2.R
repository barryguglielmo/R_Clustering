data <- read.csv(file.choose(), header = T)
library(ggplot2)
ggplot(data, aes(x=WP.AI, y=WP.HX)) + geom_point(size=2, shape=23)