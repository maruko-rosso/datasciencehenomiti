
#### 利用データ ####
# 利用するデータ
head(iris) # 上位6行を出力


#### 箱ひげ図 ####
# 箱ひげ図
boxplot(iris$Petal.Length,main =  "boxplot of Petal.Length")

# 箱ひげ図 カテゴリ比較
boxplot(formula = Petal.Length ~ Species,
        data = iris ,main =  "boxplot of Petal.Length × Species") # ①

boxplot(iris$Petal.Length ~ iris$Species ,main =  "boxplot of Petal.Length × Species") # ①と同じものの書き方違い

#### ヒストグラム ####
# ヒストグラム
hist(iris$Petal.Length , main = "histgram of Petal.Length")

# ヒストグラムのグラフを四分割で作成
par(mfrow = c(2,2)) # グラフ表示を２×２に指定

hist(iris$Petal.Length , main = "histgram of Petal.Length")
hist(iris$Petal.Width , main = "histgram of Petal.Width")
hist(iris$Sepal.Length , main = "histgram of Sepal.Length")
hist(iris$Sepal.Width , main = "histgram of Sepal.Width")

par(mfrow = c(1,1)) # グラフ表示を１×１に指定（デフォルト）

#### 散布図 ####
# plotの一例
plot(x = iris$Species, y = iris$Sepal.Width) # 箱ひげ図の作成

# 散布図の作成
plot(x = iris$Petal.Length, y = iris$Petal.Width, col = iris$Species,
    xlab = "花びらの長さ",ylab = "花びらの広さ", main = "花びらの長さと広さの散布図"
    )
