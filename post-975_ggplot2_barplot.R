
library(ggplot2) # グラフ作成
library(dplyr) # 集計用
library(scales) # 軸のスケール変更

#### データ作成 ####
d_1 <- data.frame(
job = c( 'admin.'	, 'blue-collar'	, 'entrepreneur'	, 'housemaid'	, 'management'	, 'retired'	, 'self-employed'	, 'services'	, 'student'	, 'technician'	, 'unemployed'	, 'unknown')
, cnt = c( 10422	, 9254	, 1456	, 1060	, 2924	, 1720	, 1421	, 3969	, 875	, 6743	, 1014	, 330)
)

#### 棒グラフの作り方 ####
d_1 %>% 
  ggplot(aes(x = job, y = cnt, fill = job,label = cnt)) +
  geom_bar(stat = "identity") +
  geom_text( vjust = -1)

#### 棒グラフの作り方2 ####
d_2 <- data.frame(
  loan = c('no'	, 'no'	, 'no'	, 'no'	, 'unknown'	, 'unknown'	, 'unknown'	, 'unknown'	, 'yes'	, 'yes'	, 'yes'	, 'yes')
  , marital = c('divorced'	, 'married'	, 'single'	, 'unknown'	, 'divorced'	, 'married'	, 'single'	, 'unknown'	, 'divorced'	, 'married'	, 'single'	, 'unknown')
  , ratio	= c( 0.11	, 0.61	, 0.28	, 0	, 0.12	, 0.59	, 0.28	, 0	, 0.11	, 0.6	, 0.29	, 0)
)

d_2 %>% 
  ggplot(aes(x = marital, y = ratio, fill = loan)) +
  geom_bar(stat = "identity",position = "dodge") +
  ggtitle("loan")

