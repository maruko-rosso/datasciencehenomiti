
#### lag関数、lead関数の挙動確認[数値] ####
# lag関数の利用チェック用テーブルの作成
d1 <- data.frame(
  c1 = c(1,2,3,4,5)
)
 
# dplyrのlead関数、lag関数のチェック
 
library(dplyr)
d1 %>%
  mutate(lead_01 = lead(c1,n = 1)) %>%
  mutate(lead_02 = lead(c1,n = 2)) %>%
  mutate(lead_03 = lead(c1,n = 3)) %>%
  mutate(lag_01 = lag(c1,n = 1)) %>%
  mutate(lag_02 = lag(c1,n = 2)) %>%
  mutate(lag_03 = lag(c1,n = 3)) 
 

#### lag関数、lead関数の挙動確認[文字列] ####
# 文字列でもチェック
d2 <- data.frame(
  c2 = c("a","b","c","d","e")
)
 
d2 %>%
  mutate(lead_01 = lead(c2,n = 1)) %>%
  mutate(lead_02 = lead(c2,n = 2)) %>%
  mutate(lead_03 = lead(c2,n = 3)) %>%
  mutate(lag_01 = lag(c2,n = 1)) %>%
  mutate(lag_02 = lag(c2,n = 2)) %>%
  mutate(lag_03 = lag(c2,n = 3))
	
  
  
