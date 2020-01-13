#### テストデータ作成 ####

# テストデータ作成
tenki <- data.frame(
  date = c("2019-1-5","2019-1-6","2019-1-7","2019-1-8","2019-1-9","2019-1-10"),
  weather = c("kumori","hare","hare","ame","雪","くもり"),
  temperature = c(5,15,20,10,-5,8)
)


#### 数値情報を使って行の絞り込み ####
tenki %>%
  filter(temperature >= 10)


#### 文字を使った行の絞り込み① ####
# greplを使って行の絞り込み
tenki %>%
  filter(grepl(pattern = "雪",x = weather))


#### 文字を使った行の絞り込み②　部分一致 ####
# 部分一致の挙動確認
tenki %>%
  filter(grepl(pattern = "晴れ",x = weather))


#### 日付を使った行の絞り込み ####
## 日付型を使った絞り込み ###
#日付型に変更
tenki$date <- as.Date(tenki$date)

# 1/7を基準に絞り込み
tenki %>%
  filter(date>= "2019-01-07")



	
	
