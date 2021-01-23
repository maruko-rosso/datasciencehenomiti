

# 前準備
d <- read.csv('https://raw.githubusercontent.com/maruko-rosso/datasciencehenomiti/master/data/ShopSales.csv',header = T)
d %>% head()


library(RColorBrewer)
display.brewer.all()
theme_set(theme_bw())


library(scales)
d %>% 
  ggplot(aes(x = staff,y = price)) +
  geom_boxplot()  + scale_color_brewer("Set1")

d <- read.csv('https://raw.githubusercontent.com/maruko-rosso/datasciencehenomiti/master/data/ShopSales.csv',header = T)


library(tidyverse)
install.packages("tidyverse")


# head
## date          shop staff  item  price quantity
## 1 2018-02-01      New York  Kory itemA 290000        1
## 2 2018-02-01      New York  Kory itemB 160000        1
## 3 2018-02-01      New York  Kory itemC  14000        1
## 4 2018-02-01 San Francisco  Rose itemD 570000        3
## 5 2018-02-01      New York  Kory itemE  11100        1
## 6 2018-02-01      New York  Kory itemE  11100        1



## 集計
d %>% summarise(n())

## n()
## 1 2276

d %>% summarise(sum(price), mean(price))

## sum(price) mean(price)
## 1  418912470    184056.4


d_2 <- d %>% summarise(sum(price), mean(price))
d_2

d_2 %>% summarise(sum(`sum(price)`))


# 列の抽出（select）
d %>% select(shop)
d %>% select(shop,staff)


# 表の並び替え(arrange)
# 昇順
d %>% arrange(shop,item) %>% head()

# 降順
d %>% arrange(desc(shop),item) %>% head()


d %>% group_by(shop) %>% summarise()
## `summarise()` ungrouping output (override with `.groups` argument)
## # A tibble: 3 x 1
## shop         
## <chr>        
## 1 Chicago      
## 2 New York     
## 3 San Francisco



d %>% group_by(shop) %>% summarise(n(), n_distinct(staff))

## `summarise()` ungrouping output (override with `.groups` argument)
## # A tibble: 3 x 3
## shop          `n()` `n_distinct(staff)`
## <chr>         <int>               <int>
## 1 Chicago         149                   3
## 2 New York       1257                   5
## 3 San Francisco   870                   4


d_2 <- d %>% group_by(shop) %>% summarise(n())
d_2




d %>% select(staff) %>% head()
d %>% select(-staff) %>% head()


## date          shop  item  price quantity
## 1 2018/2/1      New York itemA 290000        1
## 2 2018/2/1      New York itemB 160000        1
## 3 2018/2/1      New York itemC  14000        1
## 4 2018/2/1 San Francisco itemD 570000        3
## 5 2018/2/1      New York itemE  11100        1
## 6 2018/2/1      New York itemE  11100        1


#### 列の追加 ####
d %>% mutate(price_sum = sum(price)) %>% head()

## date          shop staff  item  price quantity price_sum
## 1 2018/2/1      New York  Kory itemA 290000        1 418912470
## 2 2018/2/1      New York  Kory itemB 160000        1 418912470
## 3 2018/2/1      New York  Kory itemC  14000        1 418912470
## 4 2018/2/1 San Francisco  Rose itemD 570000        3 418912470
## 5 2018/2/1      New York  Kory itemE  11100        1 418912470
## 6 2018/2/1      New York  Kory itemE  11100        1 418912470


d %>% group_by(staff) %>% mutate(price_sum = sum(price)) %>% head()

## # A tibble: 6 x 7
## # Groups:   staff [2]
## date     shop          staff item   price quantity price_sum
## <chr>    <chr>         <chr> <chr>  <int>    <int>     <int>
##   1 2018/2/1 New York      Kory  itemA 290000        1  28116970
## 2 2018/2/1 New York      Kory  itemB 160000        1  28116970
## 3 2018/2/1 New York      Kory  itemC  14000        1  28116970
## 4 2018/2/1 San Francisco Rose  itemD 570000        3  12366200
## 5 2018/2/1 New York      Kory  itemE  11100        1  28116970
## 6 2018/2/1 New York      Kory  itemE  11100        1  28116970


#### 絞込み filter ####
d %>% filter(staff == "Kory") %>% head()

## date     shop staff  item  price quantity
## 1 2018/2/1 New York  Kory itemA 290000        1
## 2 2018/2/1 New York  Kory itemB 160000        1
## 3 2018/2/1 New York  Kory itemC  14000        1
## 4 2018/2/1 New York  Kory itemE  11100        1
## 5 2018/2/1 New York  Kory itemE  11100        1
## 6 2018/2/1 New York  Kory itemE  11100        1


d %>% filter(price < 2000) %>% head()

## date          shop   staff  item price quantity
## 1  2018/2/2 San Francisco Richard itemI  1910        1
## 2  2018/2/5 San Francisco  Rachel itemI  1910        1
## 3 2018/2/12 San Francisco  Rachel itemI  1910        1
## 4 2018/2/14      New York  Rachel itemI  1910        2
## 5 2018/2/14      New York  Rachel itemI  1910        1
## 6 2018/2/14      New York  Rachel itemI  1910        1

#### 表の並び替え arrange ####
d %>% arrange(price) %>% head()

## date          shop   staff  item price quantity
## 1  2018/2/2 San Francisco Richard itemI  1910        1
## 2  2018/2/5 San Francisco  Rachel itemI  1910        1
## 3 2018/2/12 San Francisco  Rachel itemI  1910        1
## 4 2018/2/14      New York  Rachel itemI  1910        2
## 5 2018/2/14      New York  Rachel itemI  1910        1
## 6 2018/2/14      New York  Rachel itemI  1910        1

d %>% arrange(desc(quantity)) %>% head()

## date          shop   staff  item  price quantity
## 1 2018/2/14      New York  Rachel itemB 160000       40
## 2 2018/2/18      New York  Rachel itemB 160000       28
## 3  2018/2/2 San Francisco Richard itemB 160000       13
## 4 2018/2/15 San Francisco  Rachel itemG  65000       13
## 5 2018/2/22      New York    Rose itemB 160000       11
## 6 2018/2/22      New York    Rose itemB 160000       11


#### 表の結合 ####


d_2 <- d %>% group_by(shop) %>% summarise(n())

d %>% 
  left_join(d_2,by = c("shop" = "shop")) %>% 
  head()


## date          shop staff  item  price quantity  n()
## 1 2018/2/1      New York  Kory itemA 290000        1 1257
## 2 2018/2/1      New York  Kory itemB 160000        1 1257
## 3 2018/2/1      New York  Kory itemC  14000        1 1257
## 4 2018/2/1 San Francisco  Rose itemD 570000        3  870
## 5 2018/2/1      New York  Kory itemE  11100        1 1257
## 6 2018/2/1      New York  Kory itemE  11100        1 1257



















