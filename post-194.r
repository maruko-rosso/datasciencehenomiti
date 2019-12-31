#### ディレクトリの設定方法 ####

# ディレクトリの設定方法
setwd("フォルダパスを記載")

# 現在のディレクトリの確認方法
getwd()

#### データのインポート ####
# データの読み込み
datamart <- read.csv("iris.csv")

# データが正しく読み込みされたのを確認するために最初の6行を表示
head(datamart)


#### データのエクスポート ####
# データのエクスポート 拡張子を忘れないように！
write.csv(datamart,"exportdata.csv")

# 最初の6行だけをエクスポート
write.csv(head(datamart), "export_head6.csv")



#### データ量が多い場合の取り扱い方法（100万行以上） ####
# パッケージのインストール
install.packages("data.table")

# ライブラリの読み込み
library(data.table)

# データの読み込み
datamart <- fread("iris.csv")

# データの書き出し
fwrite(datamart,"exportdata.csv")

#### その他のデータのインポート・エクスポート方法 ####
# クリッップボードからの読み込み（windowsのみ）
read.csv("clipboard")　# Excelからの読み取りを想定

# クリッップボードへの書き込み（windowsのみ）
write.csv(datamart,"clipboard")

# 区切りがカンマ以外のデータの読み書き
read.table( "iris.csv" 
  , sep = "," # 区切り文字を指定できます。今回はカンマ区切り 
  , header = T # ヘッダーのあるなしを設定できます。 
  , encoding = "UTF-8" # エンコーディングの指定 
  ) 
 
write.table( datamart 
, "exportdata.txt" 
, sep = "区切り文字" # 区切り文字を指定できます。 
, header = T # ヘッダーのあるなしを設定できます。 
, encoding = "UTF-8" # エンコーディングの指定 ) 

# データテーブルではなく、オブジェクトのエクスポート
write(datamart , "exportdata.txt" )
