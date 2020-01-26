
#### グラフの可視化 ####
# パッケージインポート
import numpy as np
import seaborn as sns 

# 表示桁数の指定
%precision 3

# グラフを描画するライブラリ
from matplotlib import pyplot as plt

# seabornを利用したヒストグラム用のデモデータ作成
fish_data = np.array([2,3,3,4,4,4,4,5,5,6])
fish_data

# 可視化
sns.distplot(fish_data, bins = 10)
plt.title("ヒストグラム_カ-ネル密度推定あり、10分割")


#### 文字化けを解消したグラフの可視化 ####
# 文字化け防止
plt.rcParams['font.family'] = 'AppleGothic' 

# 可視化
sns.distplot(fish_data, bins = 10)
plt.title("ヒストグラム_カ-ネル密度推定あり、10分割")
