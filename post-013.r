
#### 箱ひげ図作成 ####
library(ggplot2)
ggplot(datamart , aes(x = 1 ,y = 客単価 )) + 
  geom_boxplot() + 
  ggtitle("コンビニ店の客単価の箱ひげ図")
  
  
#### 箱ひげ図作成２ ####
library(ggplot2)
ggplot(ShopData , aes(x = 店舗名 ,y = 客単価 , col = 店舗名)) +
  geom_boxplot() +
  ggtitle("コンビニ店別の客単価の箱ひげ図")
