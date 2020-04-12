
#### 偏差値の計算 ####
PaperTest$平均値 <- mean(PaperTest$Score) #平均値の列追加
PaperTest$標準偏差 <- sd(PaperTest$Score) #標準偏差の列追加
PaperTest$偏差値 <- 10 * (PaperTest$Score - PaperTest$平均値) / PaperTest$標準偏差 + 50 # 偏差値を計算


#### 店舗ごとの平均と標準偏差を算出して一つのデータフレームにまとめ る####
ShopData_SD_mean <- data.frame() # 空のデータフレームを作成
ShopData_SD_mean <- rbind(ShopData_SD_mean, data.frame(ShopName = "ShopA", SD = sd(ShopData[ShopData$ShopName == "ShopA",]$DailySalse) ,mean = mean(ShopData[ShopData$ShopName == "ShopA",]$DailySalse)))
ShopData_SD_mean <- rbind(ShopData_SD_mean, data.frame(ShopName = "ShopB", SD = sd(ShopData[ShopData$ShopName == "ShopB",]$DailySalse) ,mean = mean(ShopData[ShopData$ShopName == "ShopB",]$DailySalse)))
ShopData_SD_mean <- rbind(ShopData_SD_mean, data.frame(ShopName = "ShopC", SD = sd(ShopData[ShopData$ShopName == "ShopC",]$DailySalse) ,mean = mean(ShopData[ShopData$ShopName == "ShopC",]$DailySalse)))
ShopData_SD_mean <- rbind(ShopData_SD_mean, data.frame(ShopName = "ShopD", SD = sd(ShopData[ShopData$ShopName == "ShopD",]$DailySalse) ,mean = mean(ShopData[ShopData$ShopName == "ShopD",]$DailySalse)))
ShopData_SD_mean <- rbind(ShopData_SD_mean, data.frame(ShopName = "ShopE", SD = sd(ShopData[ShopData$ShopName == "ShopE",]$DailySalse) ,mean = mean(ShopData[ShopData$ShopName == "ShopE",]$DailySalse)))
ShopData_SD_mean <- rbind(ShopData_SD_mean, data.frame(ShopName = "ShopF", SD = sd(ShopData[ShopData$ShopName == "ShopF",]$DailySalse) ,mean = mean(ShopData[ShopData$ShopName == "ShopF",]$DailySalse)))
ShopData_SD_mean <- rbind(ShopData_SD_mean, data.frame(ShopName = "ShopG", SD = sd(ShopData[ShopData$ShopName == "ShopG",]$DailySalse) ,mean = mean(ShopData[ShopData$ShopName == "ShopG",]$DailySalse)))

# 可視化
library(ggplot2)
ggplot(ShopData_SD_mean , aes(x = SD , y = mean )) +
  geom_point() +
  geom_text(aes(label = ShopName) ,vjust = -0.4) +
  ggtitle("各店舗ごとの売上の平均値と標準偏差 + 平均線") +
  geom_line(aes(y = mean(ShopData_SD_mean$mean))) +
  geom_line(aes(x = mean(ShopData_SD_mean$SD)))
