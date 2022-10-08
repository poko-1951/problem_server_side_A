## 開発環境
- Ruby 3.1.2
- Ruby on Rails 6.1.7

## ローカル環境での実行方法
```
$ git clone https://github.com/poko-1951/problem_server_side_A.git
$ bundle install
$ rails db:migrate
```
その後、Postmanにて以下の内容にてテストする
- HTTPリクエスト: POST
- データ送信：rawのJSONを選択
- データ内容：以下参照
```
{
  "name": "apple",
  "price": 200
}
```
