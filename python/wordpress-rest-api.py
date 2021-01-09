
import requests
import json

# 固定ページの一部を取得
user_id = '要変更'
password = '要変更'

end_point_url ="https://datasciencehenomiti.com/wp-json/wp/v2/pages/2020" # 自分の環境に合わせて変更してください
r = requests.get(end_point_url, auth=(user_id, passward)).json()
print(r['title'])

# 固定ページの１ページ目を全件取得
user_id = '要変更'
password = '要変更'

end_point_url ="https://datasciencehenomiti.com/wp-json/wp/v2/pages" # 「?page=2」をつけると２ページ目を取得
r = requests.get(end_point_url, auth=(user_id, passward)).json()
print(r[1]['title'])


#  投稿
p_title = "APIからの投稿5"
p_content = '<!-- wp:paragraph --><br/><p>私もビズリーチやリクルート、マイナビといった転職のエージェントを利用して転職をしたことがあります。そのときに気になるのが年収が上がるのか下がるのかでした。この辺りを政府統計を使って信頼できる数値で調べてみましたので参考にしてみてください。</p><br /><!-- /wp:paragraph --><br /><!-- wp:heading {"level":3} --><br /><h3>直近の企業を転職した理由</h3><br /><!-- /wp:heading -->'
p_content = '<!-- wp:paragraph --><p>私もビズリーチやリクルート、マイナビといった転職のエージェントを利用して転職をしたことがあります。そのときに気になるのが年収が上がるのか下がるのかでした。この辺りを政府統計を使って信頼できる数値で調べてみましたので参考にしてみてください。</p><!-- /wp:paragraph --><!-- wp:heading {"level":3} --><h3>直近の企業を転職した理由</h3><!-- /wp:heading -->'
p_status = "draft"

payload = {
            'title': p_title ,
            'content' : p_content ,
            'status' : p_status,
            'parent' : 113,
            'slug' : 'test_slug'
            }


