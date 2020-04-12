#### 型をcharacterに指定して取り込み ####
x <-read.csv(file = "iris.csv" ,header = T,colClasses = "character")

#### 複数の型を個別に取り込む方法 ####
colcllass <- c("numeric","character","character","character","character")
x <-read.csv(file = "iris.csv" ,header = T,colClasses = colcllass)

#### おまけ:時間の設定 ####
t <- "2018-01-01 12:00:00"
lt <- as.POSIXlt(t, format="%Y-%m-%d %H:%M:%S", tz = "Japan")
