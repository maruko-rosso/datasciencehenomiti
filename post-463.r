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
