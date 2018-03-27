data <- read.csv(file.choose(), header = T)
set.seed(101)
library(hexbin)
plot(hexbin(data$WP.AI, data$WP.HX))