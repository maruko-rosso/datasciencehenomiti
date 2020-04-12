# 体重肥満度の推移

library(dplyr)
library(ggplot2)
library(scales)
library(tidyr)

d <- read.csv("/Users/matsuokashigeaki/Desktop/肥満及び低体重（やせ）の者の割合の年次推移（20歳以上，性・年齢階級別）.csv")

str(d)
head(d)
# 縦持ち変更
d %>%
  gather(key = body_type,value = 性別,和暦,西暦)

# 総数 かつ 男性のデータを表示
ggplot(d[d$年代=="総数" & d$性別 == "男性",],aes(x = as.integer(和暦),y = body_type_ratio)) +
  geom_line()

help("gather")

mini_iris <- iris[c(1, 51, 101), ]
# gather Sepal.Length, Sepal.Width, Petal.Length, Petal.Width
gather(mini_iris, key = flower_att, value = measurement,
       Sepal.Length, Sepal.Width, Petal.Length, Petal.Width)
mini_iris %>% head()
d2 <-
  d %>%
    gather( key = body_type , value = body_type_ratio,やせ,肥満,普通)

str(d2)
d2 %>% head()
d2 %>%
  group_by(年代) %>%
  summarise()

d2$西暦 <- as.integer(d2$西暦)

theme_set( theme_bw(base_family = "HiraKakuProN-W3"))
ggplot(d2[d2$年代 == "総数",],aes(x = 西暦,y = body_type_ratio, fill = body_type, col = body_type)) +
  geom_line()+
  facet_grid(. ~ 性別) +
  ggtitle("性別×肥満度別の年別割合推移")

ggplot(d2[d2$年代 == "総数",],aes(x = 西暦,y = body_type_ratio, fill = body_type, col = body_type)) +
  geom_line()+
  facet_grid(. ~ 性別) +
  ggtitle("男女別の肥満度年次推移")

ggplot(d2[d2$年代 == "20-29歳" ,],aes(x = 西暦,y = body_type_ratio, fill = body_type, col = body_type)) +
  geom_line()+
  facet_grid(. ~ 性別) +
  ggtitle("男女別の肥満度年次推移[20代]")

ggplot(d2[d2$年代 == "30-39歳" ,],aes(x = 西暦,y = body_type_ratio, fill = body_type, col = body_type)) +
  geom_line()+
  facet_grid(. ~ 性別) +
  ggtitle("男女別の肥満度年次推移[30代]")

ggplot(d2[d2$年代 == "40-49歳" ,],aes(x = 西暦,y = body_type_ratio, fill = body_type, col = body_type)) +
  geom_line()+
  facet_grid(. ~ 性別) +
  ggtitle("男女別の肥満度年次推移[40代]")

ggplot(d2[d2$年代 == "50-59歳" ,],aes(x = 西暦,y = body_type_ratio, fill = body_type, col = body_type)) +
  geom_line()+
  facet_grid(. ~ 性別) +
  ggtitle("男女別の肥満度年次推移[50代]")

ggplot(d2,aes(x = as.integer(西暦),y = body_type_ratio)) +
  geom_line()

## 特定の西暦で切り出し
ggplot(d2[d2$年代 == "総数" & d2$西暦 == 2016,],
       aes(x = body_type, y = body_type_ratio,  fill = body_type)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = body_type_ratio,vjust = 2)) +
  facet_grid(. ~ 性別) +
  ggtitle("2016年度 男女別の肥満度")

ggplot(d2[d2$年代 == "総数" & d2$西暦 == 2010,],
       aes(x = body_type, y = body_type_ratio,  fill = body_type)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = body_type_ratio,vjust = 2)) +
  facet_grid(. ~ 性別) +
  ggtitle("2010年度 男女別の肥満度")

ggplot(d2[d2$年代 == "総数" & d2$西暦 == 2000,],
       aes(x = body_type, y = body_type_ratio,  fill = body_type)) +
  geom_bar(stat = "identity")+
  geom_text(aes(label = body_type_ratio,vjust = 2)) +
  facet_grid(. ~ 性別) +
  ggtitle("2000年度 男女別の肥満度")
