
#### 利用データの事前確認 ####
# テストデータ作成
d <- data.frame(
  sex  = c("男性","男性","男性","男性","男性",
            "女性","女性","女性","女性","女性"),
  age  = c("20代","30代","40代","50代","60代",
            "20代","30代","40代","50代","60代"),
  height = c(180,172,163,167,175,160,161,157,155,165),
  weight = c(71,72,69,78,91,56,49,51,48,65)
)


#### 事前データの横変換 ####	
library(tidyverse) # dplyr とtidyr、ggplotといったよく使うパッケージがすべて入った便利ツール
 
# 性別×年代で身長表作成
d %>%
  select(sex,age,height) %>%
  spread(key = age,value = height)


#### 横変換したデータの縦変換 ####
# 横持にした表を改めて、縦に変換
d %>%
  select(sex,age,height) %>%
  spread(key = age,value = height) %>%
  gather(key = age,value = height, -sex) # そのまま維持したい項目は「-」をつけて記載しておく


	
