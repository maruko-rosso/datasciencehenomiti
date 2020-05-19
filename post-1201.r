library(ggplot2)
library(ggthemes)
library(scales)

# 資産
sisan <- c(c("資産", "資産"))
sisan_item <- c("流動資産", "固定資産")
sisan_value <- c(22276, 27484)

## tbl
d_sisan <-
  data.frame(
    sisan,sisan_item , sisan_value)
# 順序
d_sisan$sisan_item <- factor(d_sisan$sisan_item , levels = c("流動資産", "固定資産"))
d_sisan$sisan_value_money <- paste(format(x = d_sisan$sisan_value, big.mark = ","),"(",percent(d_sisan$sisan_value / sum(d_sisan$sisan_value)),")",sep = "")


# 負債・純資産
kasikata_name <- c("貸方", "貸方", "貸方", "貸方", "貸方")
kasikata_cate <- c("負債", "負債", "純資産", "純資産", "純資産")
kasikata_item1 <- c("流動負債", "固定負債", "資本金", "資本剰余金", "利益剰余金")
kasikata_value <- c(13959, 18934,2240,45,16834)
kasikata_value2 <- c(13959, 18934,2240,45,16834) # 可視化用：マイナスをプラスに変更

d_kasikata <-
  data.frame(kasikata_name,
             kasikata_cate,kasikata_item1 , kasikata_value,kasikata_value2)
d_kasikata$kasikata_item1 <- factor(d_kasikata$kasikata_item1 , levels = c("流動負債", "固定負債", "資本金", "資本剰余金", "利益剰余金"))
d_kasikata$kasikata_value_money <- paste(format(x = d_kasikata$kasikata_value, big.mark = ","),
                                         "(",percent(d_kasikata$kasikata_value / sum(d_kasikata$kasikata_value)),")",sep = "")

#### 売上 ####
PL_item <- c("資産合計","売上","売上原価", "販管費","営業外収益","当期純利益")
PL_value <- c(49761,25300,2874,20337,1403,2516)
PL_text <- paste(format(x = PL_value, big.mark = ","),"(", percent(PL_value/PL_value[2]),")",sep = "")
d_PL <-data.frame(PL_item,PL_value,PL_text)
d_PL$PL_item <- factor(d_PL$PL_item , levels = c("資産合計","売上","売上原価", "販管費","営業外収益","当期純利益"))

g3<-   ggplot(d_PL,aes(x = PL_item, y = PL_value, fill = PL_item, label = PL_text)) +
  geom_bar(stat = "identity") +
  geom_text(aes(x = PL_item, y = PL_value, group = PL_text),
            stat = "identity") +
  scale_y_continuous()+
  scale_fill_brewer(palette="Set1")

#### 基礎情報 ####
item <- c("会社名","単位")
value <- c("base","千円")

d_base <- data.frame(
  item, value
)



#### 可視化 ####
theme_set( theme_gdocs(base_family = "HiraKakuProN-W3")) # histgram

#### 借方 可視化####

# 資産
g1 <- ggplot(d_sisan,aes(x = sisan, y = sisan_value,fill = sisan_item, label = sisan_value_money)) +
  geom_bar(stat = "identity", position = "fill") +
  geom_text(aes(x = sisan, y = sisan_value, group = sisan_item),
            stat = "identity", position = position_fill(vjust = 0.5))+
  scale_fill_brewer(palette="Set1")


#### 貸方 可視化####
## tbl
d_sisan <-
  data.frame(
    sisan,sisan_item , sisan_value)

# 順序
d_sisan$sisan_item <- factor(d_sisan$sisan_item , levels = c("流動資産", "固定資産"))
d_sisan$sisan_value_money <- paste(format(x = d_sisan$sisan_value, big.mark = ","),"(",percent(d_sisan$sisan_value / sum(d_sisan$sisan_value)),")",sep = "")

theme_set( theme_gdocs(base_family = "HiraKakuProN-W3"),palette = "set3") # histgram
help("theme_set")
help("theme_gdocs")



# 貸方可視化
g2<-   ggplot(d_kasikata,aes(x = kasikata_name, y = kasikata_value2, fill = kasikata_item1, label = kasikata_value_money)) +
  geom_bar(stat = "identity", position = "fill") +
  geom_text(aes(x = kasikata_name, y = kasikata_value2, group = kasikata_item1),
            stat = "identity", position = position_fill(vjust = 0.5))+
  scale_fill_brewer(palette="Set1")


library(gridExtra)
grid.arrange(g1,g2,g3,ncol = 2)
