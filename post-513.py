# jupyter notebookのおまじない 

# 表示桁数の指定 

%precision 3 

# グラフを描画するライブラリ 
from matplotlib import pyplot as plt 

# jupyter notebookへのグラフの埋め込み 
%matplotlib inline

 

# seabornを利用したグラフの可視化
import seaborn as sns
sns.set() # おまじない

# グラフの可視化
plt.plot(x, y)
plt.title("lineplot matplotlib")
plt.xlabel("x")
plt.ylabel("y")


df = pd.DataFrame({
    "x" : x,
    "y" : y})
df
sns.pointplot(x = "x", y = "y", data = df)
plt.title("lineplot by seaborn")
 


