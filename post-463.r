
#### 文字列の切り出し ####
> # テストデータ 
> TestData <- c("AABBCCDD", "ABCDABCDABCD", "AABBCCDD") 
> 
> # 文字列の切り出し１ 
> substr(TestData, 2, 3) 
[1] "AB" "BC" "AB" 
> 
> # 文字列の切り出し２ 
> substring(TestData, 2, 3) 
[1] "AB" "BC" "AB"

#### 文字列の切り出し ####
> # テストデータ
> TestData <- c("AABBCCDD", "ABCDABCDABCD", "AABBCCDD")
> 
> # sub
> sub("A", "", TestData)
[1] "ABBCCDD"     "BCDABCDABCD" "ABBCCDD"    
> 
> # gsub
> gsub("A", "", TestData)
[1] "BBCCDD"    "BCDBCDBCD" "BBCCDD"

#### 文字列の結合 ####
> # テストデータ 
> TestData <- c("AABBCCDD", "ABCDABCDABCD", "AABBCCDD") 
> 
> # 文字列の１つ目と２つ目を結合 
> paste(TestData[1], TestData[2]) 
[1] "AABBCCDD ABCDABCDABCD" 
> 
> # 文字列の１つ目と２つ目を結合し間の空白を無くす 
> paste(TestData[1], TestData[2], sep = "") 
[1] "AABBCCDDABCDABCDABCD"
