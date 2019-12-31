# 性別 
data.frame( table(datamart_001$SQ1) )

# おにぎりの好き嫌い
data.frame(table(datamart_001$Q1))

# クロス集計表（実数）
table(datamart_001$Q1,datamart_001$SQ1)

# クロス集計表（％）
prop.table( table(datamart_001$Q1,datamart_001$SQ1) ,margin = 1) # 横％
prop.table( table(datamart_001$Q1,datamart_001$SQ1) ,margin = 2) # 縦％

