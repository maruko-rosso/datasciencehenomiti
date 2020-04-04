

#### の基礎的な計算① ####
# 1行目から6行目までの抽出
1:6

# 足し算
100 + 2

# 引き算
100 - 2

# 掛け算
100 * 2

# 割り算
100 / 2

# 累乗
100 ^ 2

# 平方根
sqrt(100)
100 ^ (1/2)


####
# オブジェクト（xとy）にデータを格納
x <- c(1, 2, 3, 4, 5, 6)
y <- c(3, 5, 7, 9, 11, 13)

# 格納したオブジェクトを使った計算
x - y
x * y

# 合計
sum(x)

# 平均
mean(x)

# 件数
length(x)

# 中央値
median(x)

# 最小値
min(x)

# 最大値
max(x)


> # 格納したオブジェクトを使った計算
> x - y
[1] -2 -3 -4 -5 -6 -7
> x * y
[1]  3 10 21 36 55 78
>
> # 合計
> sum(x)
[1] 21
>
> # 平均
> mean(x)
[1] 3.5
>
> # 件数
> length(x)
[1] 6
>
> # 中央値
> median(x)
[1] 3.5
>
> # 最小値
> min(x)
[1] 1
>
> # 最大値
> max(x)
[1] 6


#### 基礎的なデータハンドリングの方法 ####

# データフレームの最初の6行を表示
head(iris)

# 列名で列の抽出
iris$Sepal.Length
iris$Species

# 1列目を抽出
iris[,1]

# データフレームから行を指定して抽出
iris[1,]
iris[1:6,] # head()関数と同じ結果

# 1行目の２列目の数値を抽出（Sepal.Widthの一行目の3.5）
iris[1,2]

# Specisの「setosa」とマッチしたデータを抽出
iris[iris$Species == "setosa", ]
iris[iris$Species != "setosa", ]

iris[iris$Species == "setosa", 2]
iris[iris$Species != "setosa", 2]

# 行の抽出後のデータ抽出
iris[iris$Species == "setosa", ]$Sepal.Width

iris[iris$Sepal.Width == "setosa", ]
