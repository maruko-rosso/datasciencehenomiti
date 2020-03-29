
#### 前段 ####
ShopData <- read.csv('ShopData.csv',header = T)

library(ggplot2)
ggplot(ShopData , aes(x = 店舗名 ,y = 客単価 , col = 店舗名)) +
  geom_boxplot() +
  ggtitle("コンビニ店別の客単価の箱ひげ図")
  
#### 連続量のカテゴリー化とクロス集計① ####
# データを3分割
table(cut(ShopData$客単価, breaks = 3)) # 客単価の値を3等分に分割

# 客単価を3分割して集計
datamart_001 <- ShopData
datamart_001$price_flg <- cut(datamart_001$客単価, breaks = 3) # 客単価の値を3等分に分割

#### 連続量のカテゴリー化とクロス集計② ####
# ifelse を使ったflg立て
datamart_002 <- ShopData
datamart_002$price_flg <- ifelse(datamart_002$客単価 >= 1037, "Price range High","Price range Low")

# クロス集計
table(datamart_002$price_flg,datamart_002$店舗名)

	
#### #####  
# 客単価をHML分析風に分割
datamart_002$price_flg_02 <- ifelse(datamart_002$客単価 >= 1200, "High",
                                 ifelse(datamart_002$客単価 >= 800, "Middle","Low"
                                       ))
# クロス集計
table(datamart_002$price_flg_02,datamart_002$店舗名)


	
