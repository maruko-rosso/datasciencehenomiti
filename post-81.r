
##### 分散の作り方・理解 ####
library(ggplot2)
ggplot(HightOfStudent,aes(x = 1,y = 身長)) +
  geom_point() +
  xlab("") +
  geom_text(aes(label = 生徒名),vjust= -0.2,hjust= -0.2) +
  ggtitle("身長を一直線に可視化")

#### 一直線の可視化を横に展開 ####
ggplot(HightOfStudent,aes(x = 生徒名,y = 身長)) +
  geom_point() +
  geom_text(aes(label = 生徒名),vjust= -0.2,hjust= -0.2) +
  ggtitle("一直線の可視化を横に展開")

#### 身長の可視化＋平均線 ####
ggplot(HightOfStudent,aes(x = scales,y = 身長)) +
  geom_point() +
  geom_line(aes(y = 身長の平均,col = "red"　),stat = "identity")+
  geom_text(aes(label = 生徒名),vjust= -0.2,hjust= -0.2) +
  ggtitle("身長の可視化＋平均線") +
  xlab("") +
  theme(legend.position = "none")


#### 計算 ####
HightOfStudent$偏差 <- HightOfStudent$身長 - HightOfStudent$身長の平均 # 偏差の計算
HightOfStudent$偏差の二乗 <- HightOfStudent$偏差 ^ 2 # 偏差の二乗を計算
Varience <- sum(HightOfStudent$偏差の二乗) / length(HightOfStudent$身長) # 偏差二乗和 ÷ 変数の要素数
Varience # 分散（標本分散であることに注意！）
