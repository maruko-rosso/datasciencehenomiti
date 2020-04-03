# クラスター分析用データ作成
data <- iris[1:4]

# クラスター分析実施
km <- kmeans(x = data,centers = 3)

# 分類したフラグの抽出
km$cluster
