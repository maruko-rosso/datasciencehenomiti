library(dplyr) 
library(ggplot2) 
library(tidyr) 
# データインポート 
d <- read.csv() # 前項のファイルをDLして利用してください。 

# 縦持ち変換 
d2 <- d 
   %>% gather( key = body_type , value = body_type_ratio,やせ,肥満,普通)

#### ####
theme_set( theme_bw(base_family = "HiraKakuProN-W3")) 
ggplot(d2[d2$年代 == "総数",],aes(x = 西暦,y = body_type_ratio, fill = body_type, col = body_type)) + 
   geom_line()+ 
   facet_grid(. ~ 性別) + 
   ggtitle("性別×肥満度別の年別割合推移")
