plot(iris, col = iris$Species)


library("ggplot2")
library("GGally")

ggpairs(iris,aes_string(colour="Species"))
