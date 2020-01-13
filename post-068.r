
#### 散布図の見方・使い方 ####
library(ggplot2)
ggplot(cars,aes(x = speed,y = dist)) +
  geom_point() +
  ggtitle("carsを使った散布図")


#### 散布図の見方・使い方2 ####
ggplot(cars,aes(x = speed,y = dist)) +
  geom_point() +
  geom_smooth(method = lm,se = F) +
  ggtitle("carsを使った散布図＋回帰直線")
  
  
#### 散布図の利用例 ####
ggplot(ShopPotition,aes(x = 客単価,y = 客数)) + 
  geom_point() + 
  ggtitle("店舗のポジション確認")


#### 散布図の利用例２ ####
ggplot(ShopPotition,aes(x = 客単価,y = 客数)) +
  geom_point() +
  geom_line(aes(y = mean(ShopPotition$客数))) +
  geom_line(aes(x = mean(ShopPotition$客単価))) +
  ggtitle("店舗のポジション確認 + 平均線")
