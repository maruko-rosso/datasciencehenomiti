


x <- "abc"
y <- "xyz"

paste(x,y)


gsub(pattern = "a",
     replacement = "",
     x = x)

grepl(pattern = "a",x = x)

grepl(pattern = "a",x = y)


# データの要素を作成
x <- c(1,2,3)
y <- c("a","b","c")

# データフレーム
d <- data.frame(x,y)


# 要素の取得
d$x

## [1] 1 2 3

d[,1]

## [1] 1 2 3

# [行、列]を指定
d[3,2]

## [1] "c"


# 行名取得
colnames(d)

## [1] "x" "y"


# 行の構造把握
dim(d)

## [1] 3 2




