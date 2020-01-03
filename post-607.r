#### 今回のデータ ####
# ライブラリ読み込み
library(tidyverse)

# 利用データ作成
d <- data.frame( 
  sno = 1:10,
  sex = c("male","female","female","male","female","male","female","male","female","male"),
  age = c(21,24,27,32,39,43,19,25,30,51) 
  )

#### round関数１ ####
# round関数とtrunc関数の使い分け
d %>% 
  mutate( age_1 = age / 10 , age_round = round(age / 10) * 10, age_trunc = trunc(age / 10) * 10 )
  

#### round関数２ ####
d %>% 
  mutate(age_4 = as.integer(substr(x = d$age, start = 2, stop = 3))) %>% 
  mutate(age_5 = trunc(d$age / 10) * 10 + ifelse(age_4 < 6,1,6),
       age_6 = round(d$age / 10) * 10 + ifelse(age_4 > 5,0,5)
       ) %>% 
  mutate(age_7 = paste(age_5,"~",age_6) )
  
