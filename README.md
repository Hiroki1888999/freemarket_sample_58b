# メルカリコピーサイト

プログラミングスクールの卒業制作として作成したものをAWSを使って公開しました。

# 機能に関する担当部分
- DB設計
- ユーザー新規登録画面(フロントエンド)
- ルーティングの設定(バックエンド)
- ユーザー登録機能(バックエンド)
- ユーザーSNS認証機能

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

# チーム開発において工夫した点
- チームとして工夫を行った点

一日二回デイリースクラムを行うことによって、密にコミュニケーションをコンフリクト等も防ぐことができた。
また、チーム内でお互いの知見を共有することで、各個人のスキルアップにもつなげることができた。

- 個人的に工夫した点

自分の行っている作業の中で、エラーなどにあたった際に常に試しせるようなことを考え、もしそれが尽きた場合はすぐにコネクトやメンターに相談するなど、問題解決のために行動が止まっている時間を作らないよう心がけた。

# 苦労した点
- DB設計

今回のアプリは非常に多機能で、DB設計に非常に苦労をしました。チームメンバー全員での確認をしどんなテーブルが必要かに関してじっくりと考え、開発中に大きなやり直しができるだけ少なくなるように、考えて取り組みました。その結果、私の担当していたユーザー新規登録機能に関して一度だけ複数の機能のテーブルを組み合わせる必要が出ましたが、その際もシンプルな方法でテーブルを作り変えることができました。またその際も、今あるデータが消去されることのないように配慮し気をつけて取り組みました。
- ルーティングのリファクタリング

各々がルーティングに必要な記述を行うため重複もしくは、不要部分が多くなっておりました。私が担当することになっているパンくず機能の設置のためにも、ルーティングの記述のリファクタリングを行いました。
　しかしながら、チーム開発を行っている為、私個人ではコードの必要不要の判断ができない場合がありました。また、不要と判断した為にエラーが発生、ルーティングの変更によりpathが変わりエラーが起こるなど、ルーティングのリファクタリングは想定以上に時間を費やしました。
