>>> # pandasのインポート 
... import pandas as pd
>>> 
>>> # データフレームの作成
... sample_df = pd.DataFrame({
...     "col1" : sample_array,
...     "col2" : sample_array * 3,
...     "col3" : ["A", "B", "C", "D", "E"]})
>>> 
>>> sample_df
   col1  col2 col3
0     1     3    A
1     2     6    B
2     3     9    C
3     4    12    D
4     5    15    E



>>> # 結合用のデータフレーム作成
... df_1 = pd.DataFrame({
...     "col1" : np.array([1, 2, 3]),
...     "col2" : np.array(["A", "B", "C"])
... })
>>> 
>>> df_2 = pd.DataFrame({
...     "col1" : np.arange(4,7,1),
...     "col2" : np.array(["D", "E", "F"])
... })
>>> # 縦結合
... pd.concat([df_1, df_2])
   col1 col2
0     1    A
1     2    B
2     3    C
0     4    D
1     5    E
2     6    F
>>> 
>>> # 横結合
... pd.concat([df_1, df_2], axis = 1)
   col1 col2  col1 col2
0     1    A     4    D
1     2    B     5    E
2     3    C     6    F


>>> # 列の抽出方法1
... sample_df.col1
0    1
1    2
2    3
3    4
4    5
Name: col1, dtype: int64
>>> 
>>> # 列の抽出方法2
... sample_df["col2"]
0     3
1     6
2     9
3    12
4    15
Name: col2, dtype: int64
>>> 
>>> # 複数列の抽出
... sample_df[["col1", "col2"]]
   col1  col2
0     1     3
1     2     6
2     3     9
3     4    12
4     5    15
>>> 
>>> # 特定列以外の抽出
... sample_df.drop("col1", axis = 1)
   col2 col3
0     3    A
1     6    B
2     9    C
3    12    D
4    15    E


>>> # 上位5行抽出
... sample_df.head()
   col1  col2 col3
0     1     3    A
1     2     6    B
2     3     9    C
3     4    12    D
4     5    15    E
>>> 
>>> 
>>> # 上位5行抽出
... sample_df.head(n = 3)
   col1  col2 col3
0     1     3    A
1     2     6    B
2     3     9    C
>>> 
>>> # インデックスでの抽出
... sample_df.query("index == 1")
   col1  col2 col3
1     2     6    B
>>> 
>>> # 条件抽出
... sample_df.query("col3 == 'A'")
   col1  col2 col3
0     1     3    A
>>> 
>>> # 複数条件抽出(and orが利用可能)
... sample_df.query("col3 == 'A' | col3 == 'D'")
   col1  col2 col3
0     1     3    A
3     4    12    D
>>> 
>>> # 行、列の両方を利用したデータ抽出
... sample_df.query("col3 == 'A' | col3 == 'D'")[["col2","col3"]]
   col2 col3
0     3    A
3    12    D
