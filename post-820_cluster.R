par(family = "HiraKakuProN-W3")

# クラスター分析用データ作成
data <- iris[1:4] # アヤメの種類以外を取得

# クラスター分析実施
km <- kmeans(x = data,centers = 3)

# 分類したフラグとirisの種類を格納
data$cluster_flg <- km$cluster
data$Species <- iris$Species

# 分類結果と種類の図示化
par(mfrow = c(1,2))
plot(data$Sepal.Length,data$Sepal.Width, col = data$cluster_flg, main = "クラスター分析で分類したフラグ")
plot(data$Sepal.Length,data$Sepal.Width, col = data$Species, main = "Speciesで色分け")
par(mfrow = c(1,1))

# どのくらいうまく分類できてるかを集計で確認。
table(data$Species,data$cluster_flg)


