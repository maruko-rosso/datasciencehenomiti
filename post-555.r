参考にしてみてください。

---
title: 'Rmarkdown Demo'
output: 
  html_document: 
    df_print: kable
    number_sections: yes
---
# 目次
  1. irisの上位6行を出力 
  2. irisの要約統計量
  3. plot関数を利用した可視化

# 利用している集計データの上位6行を抽出
```{r, echo=FALSE}
head(iris)

```
## 集計データの要約統計量（省略）
```{r,include=FALSE}
summary(iris)
```

# 可視化
 - 以下は花びらと萼（がく）の長さや横の幅を掛け合わせて散布図で可視化を行った。
 - 色分けはデータテーブルに含まれる葉の種類。
 - この結果より、仮説として持っていた花の種類による傾向の違いがみてとれる。

```{r,echo=FALSE}

plot(iris[1:4],col = iris$Species)


```
