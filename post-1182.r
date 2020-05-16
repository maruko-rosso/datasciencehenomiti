

library(clipr)

#### データの準備 ####
date <- c('2019/10/1' ,'2019/10/2' ,'2019/10/3', '2019/10/4' ,'2019/10/5' ,'2019/10/6' ,'2019/10/7')
sales <- c(2066 ,751 ,978, 1244 ,1531 , 1531 ,2260)

# 表データ作成
d <- data.frame(date = as.Date(date), sales)

help(plot)

plot(x = d$date, y = d$sales, type = "b")

barplot(height = d$sales, main = "test")
barplot(height = as.matrix(d$sales), main = "test")

theme_set( theme_bw( ) )
ggplot(d, aes(x = as.Date(date), y = sales)) +
  geom_line(stat = "identity") +
  geom_point() +
  scale_x_date(breaks = "day", date_labels = "%m/%d")  +
  ylim(0,max(d$sales))


#### 変化率 ####
theme_set( theme_bw(base_family = "HiraKakuProN-W3"))
library(dplyr)
d <-
  d %>%
  mutate( sales_previous = lag(sales, n = 1)) %>% # 前月データの取得
  mutate(rate_change = round(sales / sales_previous,digits = 2))

ggplot(d, aes(x = as.Date(date), y = rate_change)) +
  geom_line(stat = "identity") +
  geom_point() +
  scale_x_date(breaks = "day", date_labels = "%m/%d")  +
  ylim(min(d$rate_change),max(d$rate_change)) +
  ggtitle("前月比の推移")

fsdfa




#### 指数 ####
d <-
  d %>%
  mutate(sales_index = round(sales / d$sales[1], 2)) # 10月1日を基準として指数化

ggplot(d, aes(x = as.Date(date), y = sales_index)) +
  geom_line(stat = "identity") +
  geom_point() +
  scale_x_date(breaks = "day", date_labels = "%m/%d")  +
  ylim(min(d$sales_index),max(d$sales_index)) +
  ggtitle("売上の指数")
