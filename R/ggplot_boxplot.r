

library(tidyverse)
library(scales)

d <- read.csv("https://raw.githubusercontent.com/maruko-rosso/datasciencehenomiti/master/data/ShopSales.csv")

theme_set(theme_bw())

#### ggplot：箱ヒゲ図 ####
d <- 
  d %>% 
  mutate(sales = price * quantity)


# ヒストグラムの作成
d %>% 
  ggplot(aes(y = sales)) +
  geom_boxplot()


# ヒストグラム２
d %>%
  ggplot(aes(x = staff, y = sales)) +
  geom_boxplot()

# ヒストグラムの色分け
d %>%
  ggplot(aes(x = staff, y = sales,fill = staff)) +
  geom_boxplot() +
  scale_fill_brewer(palette='Set1')


# タイトル、軸のラベル
d %>%
  ggplot(aes(x = staff, y = sales,fill = staff)) +
  geom_boxplot() +
  scale_fill_brewer(palette='Set1') +
  ggtitle("set titele") +
  scale_y_continuous(n.breaks = 10, labels = comma)


# タイトル、軸のラベル 
d %>%
  ggplot(aes(x = staff, y = sales,fill = staff)) +
  geom_boxplot() +
  scale_fill_brewer(palette='Set1') +
  ggtitle("set titele") +
  scale_y_continuous(n.breaks = 10, labels = comma, limits = c(0,1000000))


# facetを利用して分析軸の追加
d %>%
  ggplot(aes(x = staff, y = sales,fill = staff)) +
  geom_boxplot() +
  scale_fill_brewer(palette='Set1') +
  ggtitle("set titele") +
  scale_y_continuous(n.breaks = 10, labels = comma, limits = c(0,1000000)) +
  theme(axis.text.x = element_text(angle = 90))  + 
  facet_wrap( . ~ shop)


## jitter との組み合わせ
d %>%
  ggplot(aes(x = staff, y = sales,fill = staff)) +
  geom_boxplot() +
  geom_jitter() +
  scale_fill_brewer(palette='Set1') +
  ggtitle("set titele") +
  scale_y_continuous(n.breaks = 10, labels = comma, limits = c(0,1000000)) +
  theme(axis.text.x = element_text(angle = 90))  + 
  facet_wrap( . ~ shop)




