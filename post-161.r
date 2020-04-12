# 共分散の計算
var(data$para01,data$para02) * (length(data$para01)-1) / length(data$para01) 

# 可視化
library(ggplot2)
ggplot(data,aes(x = para01,y = para02)) +
  geom_point()
 
