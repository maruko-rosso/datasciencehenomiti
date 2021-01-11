

# Rに標準で組み込まれてるデモデータのirisを活用
d <- iris
head(d)


boxplot(x = d$Sepal.Length)


boxplot(x = d$Sepal.Length)


par(mfrow = c(1,2))
boxplot(x = d$Sepal.Length, main = "boxplot", xlab = "length", ylab = "Sepal.Length")
boxplot(x = d$Sepal.Length, main = "boxplot", xlab = "length", ylab = "Sepal.Length", col = 'red')
par(mfrow = c(1,1))


boxplot(x = d$Species,y = d$Sepal.Length, main = "boxplot")

boxplot(
  Sepal.Length ~ Species,
  data = d,
  main = "compare boxplot",
  col = c("pink","lightgreen" ,"lightblue")
)


boxplot(
  d[,1:4],
  main = "compare boxplot",
  col = c("pink","lightgreen" ,"lightblue","purple")
)

boxplot(len ~ dose, data = ToothGrowth,
        boxwex = 0.25, at = 1:3 - 0.2,
        subset = supp == "VC", col = "yellow",
        main = "Guinea Pigs' Tooth Growth",
        xlab = "Vitamin C dose mg",
        ylab = "tooth length",
        xlim = c(0.5, 3.5), ylim = c(0, 35), yaxs = "i")
