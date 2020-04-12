
#### ヒストグラムの見方・作り方####
library(ggplot2)
ggplot(Tall, aes(x = 身長)) +
  geom_histogram(binwidth = 5) +
  ggtitle("あるクラスの身長の分布")

#### ヒストグラムの利用例 ####
summary(Workingtime)


#### 箱ひげ図で可視化 ####
library(ggplot2)
ggplot(Workingtime, aes(x = 1,y = 労働時間)) +
  geom_boxplot() +
  coord_flip() +
  ggtitle("労働時間時間の箱ひげ図")


#### ヒストグラムで可視化 ####
library(ggplot2)
ggplot(Workingtime, aes(x = 労働時間)) +
  geom_histogram(binwidth = 10) +
  ggtitle("労働時間時間の分布（10時間刻み）")
