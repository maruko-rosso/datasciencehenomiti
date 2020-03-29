
#### 利用データ ####
# 利用するデータ cars
head(cars)


#### 変数の関係性確認 ####
# 可視化
plot(x = cars$speed, y = cars$dist, main = "スピードと距離の関係性")


#### 相関係数 ####
# 相関係数の出力
cor(cars)


#### 回帰分析の実施 ####
# 回帰分析の実施
model_lm <- lm(formula = dist ~ speed , data = cars) # 回帰分析の実行
summary(model_lm) # 実行結果の出力

Call:
lm(formula = dist ~ speed, data = cars)

Residuals:
    Min      1Q  Median      3Q     Max 
-29.069  -9.525  -2.272   9.215  43.201 

Coefficients:
            Estimate Std. Error t value Pr(>|t|)    
(Intercept) -17.5791     6.7584  -2.601   0.0123 *  
speed         3.9324     0.4155   9.464 1.49e-12 ***
---
Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1

Residual standard error: 15.38 on 48 degrees of freedom
Multiple R-squared:  0.6511,	Adjusted R-squared:  0.6438 
F-statistic: 89.57 on 1 and 48 DF,  p-value: 1.49e-12

#### 予測結果の可視化 ####
cars_v02 <- cars # 予測値作成用
cars_v02$fitted_value <- model_lm$fitted.values # 予測値の挿入

plot(x = cars_v02$speed, y = cars_v02$dist, main = "スピードと距離の関係性　回帰直線追加",ylim = c(0,100)) # 散布図作成

par(new=T) # 重ね掛けOK
plot(x = cars_v02$speed,y = cars_v02$fitted_value,type = "l",col = "red",ylim = c(0,100),ylab = "",xlab="",main="") # 予測値のプロット
par(new=F) # 重ね掛け終了


#### 信頼区間の可視化 ####
# 信頼区間付きのグラフ作成
plot(x = cars$speed, y = cars$dist, main = "スピードと距離の関係性　回帰直線と信頼区間の追加", xlim = c(0,25), ylim = c(0,100))
par(new=T) # 重ね掛けOK
plot(x = model_lm_confidence$speed,y = model_lm_confidence$fit,type = "l",col = "red", xlim = c(0,25),ylim = c(0,100),ylab = "",xlab="",main="")
par(new=T) # 重ね掛けOK
plot(x = model_lm_confidence$speed,y = model_lm_confidence$lwr,type = "l",col = "blue", xlim = c(0,25),ylim = c(0,100),ylab = "",xlab="",main="")
par(new=T) # 重ね掛けOK
plot(x = model_lm_confidence$speed,y = model_lm_confidence$upr,type = "l",col = "blue", xlim = c(0,25),ylim = c(0,100),ylab = "",xlab="",main="")
par(new=F) # 重ね掛け終了


#### 精度の確認 ####
# 回帰診断図の作成 
par(mfrow = c(2,2)) plot(model_lm) par(mfrow = c(1,1))




