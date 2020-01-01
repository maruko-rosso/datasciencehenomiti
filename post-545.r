
#### グラフの作成 ####
par(mfrow = c(2,2)) # グラフの描画範囲を四分割

boxplot(iris$Sepal.Length,main = "箱ひげ図")

hist(iris$Sepal.Length, main = "ヒストグラム")

barplot(table(iris$Species), main = "棒グラフ")

plot(iris$Sepal.Length, iris$Sepal.Width, main = "散布図")

par(mfrow = c(1,1)) # 設定を戻す

#### ggplot2で試す ####
library(ggplot2)
ggplot(iris, aes(x = Sepal.Length, fill = Species)) + 
  geom_histogram() +
  ggtitle("ヒストグラム") + 
  scale_fill_brewer(palette="Set1")
  

####  文字化けを解消するグラフの作り方　####
# 描画の文字設定をmac用に変更
par(family = "HiraKakuProN-W3")
par(mfrow = c(2,2)) # グラフの描画範囲を四分割

boxplot(iris$Sepal.Length,main = "箱ひげ図")
hist(iris$Sepal.Length, main = "ヒストグラム")
barplot(table(iris$Species), main = "棒グラフ")
plot(iris$Sepal.Length, iris$Sepal.Width, main = "散布図")

par(mfrow = c(1,1)) # 設定を戻す


#### ggplotで作成したグラフの文字化け解消 ####
library(ggplot2) # 文字化け解消 & 背景の設定も変更
theme_set( theme_bw(base_family = "HiraKakuProN-W3")) # histgram

ggplot(iris, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram() +
  ggtitle("ヒストグラム") +
  scale_fill_brewer(palette="Set1")
  
