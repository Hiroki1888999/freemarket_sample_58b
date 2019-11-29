# メルカリコピーサイト

プログラミングスクールの卒業制作として作成したものをAWSを使って公開しました。

![Imgur](https://i.imgur.com/Cm5738V.png)

# テストユーザーログイン(現在調整中です)
- email: test@merukari.com
- password: password

※観覧用としてご自由にお使いください

# リンク(現在調整中です)
- 本アプリ：http://myfreemarketsample58b.com/

# 使用技術
- Ruby 2.5.1
- Ruby on Rails 5.2.3
- MySQL 5.6
- SASS
- AWS
  - EC2
  - RDS for MySQL
  - Route53
  - VPC
- GitHub

# こだわり

データベースにはRDSを採用しています。

GitHub上では可視化されませんが、AWSではVPC内のセキュリティグループやIAMユーザーポリシーなどの設定を出来るだけ細かく行い、実際の現場でのアーキテクチャを想定して構成しています。

EC2インスタンスにCapistranoを用いて、ローカル環境からコマンド一つで自動デプロイを行うようにしています。

# 機能一覧、使用した有名gem
- ユーザー登録、ログイン機能全般(devise)
- Twitter、Twitchでの外部サービスログイン(omniauth)
- 商品投稿機能(CRUD)
- 商品一覧表示の際のページネーション機能(kaminari)
- 

# テスト
- RSpec
  - 統合テスト
  - 機能テスト
  - 単体テスト(モデル等)

テストに関しましてはテストが書けることをアピールする為、全ての機能はテストしていません。
その代わりどのようなテストケースでも書けることを意識しました。
