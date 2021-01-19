d <- read.csv('https://raw.githubusercontent.com/maruko-rosso/datasciencehenomiti/master/data/ShopSales.csv',header = T)
head(d)

# 件数表
table(d$staff)

# クロス集計表（件数）
table(d$staff, d$item)

# itemA itemB itemC itemD itemE itemF itemG itemH itemI
# Dawn       29    27    15    40    41    22    19     2     0
# Donna      13    33     5    25    45    26    11     0     3
# Hank        7    11     9     3    12     7     3     0     1
# Kory       21    17     2    29    43    26     8     2     1
# Rachel    216   290    93   238   285   227    90    12     9
# Richard    32    35    10    32    43    28    13     3     1
# Rose        9    11     2    12    12    10     5     0     0


# クロス集計表（比率）
d_cross <- table(d$staff,d$item)
prop.table(d_cross,margin = 1) # 横％
prop.table(d_cross,margin = 2) # 縦％


# クロス集計表（比率）の四捨五入
d_cross_prob <- prop.table(d_cross,margin = 1) # 縦％
d_cross_prob_02 <- round(d_cross_prob,2)
d_cross_prob_02

# クロス集計表（比率）のデータフレームへ変換
df <- as.data.frame(d_cross_prob)
