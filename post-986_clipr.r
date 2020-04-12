install.packages("clipr")
library(clipr)

#### データのRへの取り込み ####
# Rへのデータ取り込み
read_clip()

# Rへのデータ取り込み（表）
read_clip_tbl()

# Rからスプレッドシート等へのデータのはき出し
write_clip(iris)

