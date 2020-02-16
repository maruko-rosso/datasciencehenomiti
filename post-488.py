
#### numpyを利用した行列作成 ####
>>> # numpyのインポート
>>> import numpy as np

>>> # 行列の作成
... sample_array = np.array([1,2,3,4,5])
>>> sample_array
array([1, 2, 3, 4, 5])

>>> # 行列への加算
... sample_array + 3
array([4, 5, 6, 7, 8])

>>> # 行列への乗算
... sample_array  * 2
array([ 2,  4,  6,  8, 10])

>>> # 複数の次元数を持った配列の作成
... sample_array_2 = np.array(
...     [[1,2,3,4,5],
...      [6,7,8,9,10]])
>>> 
>>> sample_array_2
array([[ 1,  2,  3,  4,  5],
       [ 6,  7,  8,  9, 10]])

>>> # ３次元
... sample_array_3 = np.array(
...     [[1,2,3,4,5],
...      [6,7,8,9,10],
...      [11,12,13,14,15]])
>>> 
>>> sample_array_3
array([[ 1,  2,  3,  4,  5],
       [ 6,  7,  8,  9, 10],
       [11, 12, 13, 14, 15]])

>>> # 等差数列の作成
... np.arange(start = 1, stop = 5, step = 1)
array([1, 2, 3, 4])

>>> # 同じ値の配列を増殖
... np.tile("A", 5)
array(['A', 'A', 'A', 'A', 'A'],
      dtype='<U1')
>>> np.tile(5,4)
array([5, 5, 5, 5])

>>> # 複数次元の配列を作成
... np.tile(9,[3,2])
array([[9, 9],
       [9, 9],
       [9, 9]])



#### numpyを利用した配列のスライシング ####
>>> # 上記と同じものを利用
... sample_array_3
array([[ 1,  2,  3,  4,  5],
       [ 6,  7,  8,  9, 10],
       [11, 12, 13, 14, 15]])

>>> # １行目の抽出
... sample_array_3[0]
array([1, 2, 3, 4, 5])

>>> # ２行目の抽出
... sample_array_3[1]
array([ 6,  7,  8,  9, 10])
>>> # ３行目の４列目を抽出
... sample_array_3[2,4]
15

>>> # 範囲を絞って抽出
... sample_array_3[2,3:5]
array([14, 15])

