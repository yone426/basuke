# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## アプリケーション名

GO7SA_BLOG  

## アプリケーション概要（なぜ創ったか）

所属しているバスケサークルにて、チームのホームページあればいいね、と言う話があり、スキルアップも兼ねて作成することになりました。  
バスケチームで利用できるチームのホームページを想定しております。

## 実装した機能


1.slickを利用しスライダー機能持つアルバム

- アルバム機能として枚数を増加予定

<img width="1432" alt="top" src="https://user-images.githubusercontent.com/59817401/79980755-8fe55900-84de-11ea-89b8-5ff0bbad1c1a.png">

2.練習試合等を申し込むことのできるチャット機能、You Tubeでの試合観戦

- 他のチームにも広めていき、交流できるアプリを想定

- deviseにて登録したチーム名がデフォルトで表示されます

<img width="1432" alt="youtube" src="https://user-images.githubusercontent.com/59817401/79980648-61677e00-84de-11ea-8396-04d46788d888.png">


4.試合結果等の一覧表示

- 試合の記録を一覧表示

- 日付を押すと試合詳細画面に飛び、その試合での個人得点が見れる

<img width="1432" alt="試合一覧" src="https://user-images.githubusercontent.com/59817401/79980678-704e3080-84de-11ea-8bbe-db7555029c7c.png">

5.メンバー紹介

- flex機能により4人ずつ表示（個人名特定できない様現在は、全員同じ画像を適用）

<img width="1432" alt="紹介" src="https://user-images.githubusercontent.com/59817401/79980695-780dd500-84de-11ea-8559-450d3d484124.png">

6.得点ランキング

- 複数のデータベースを絡めてのランキング
~~~ruby
def index
    @players = Player.includes(:user)
    @game_players = GamePlayer.all
    @scorer = GamePlayer.joins(:player).group("players.name").order('sum_score desc').sum(:score)

    @score_key = @scorer.keys
    @score_value = @scorer.values

  end
~~~

<img width="1432" alt="ランキング" src="https://user-images.githubusercontent.com/59817401/79980674-6debd680-84de-11ea-9a53-41fd8c88beb4.png">


7.gemファイルfullcalenderを利用した予定共有カレンダー

- 予定の見える化

- 土日の色付け

<img width="1432" alt="カレンダー" src="https://user-images.githubusercontent.com/59817401/79980667-6cbaa980-84de-11ea-97c1-6123b96cb8b0.png">

上記を主な機能として盛り込みました。

## 工夫した点 苦労した点

- 自身で勝手に作成したのではなく、メンバーに必要機能をヒアリングし、各機能の実装ごとに感想のヒアリングした点

- メンバーの得点を中間テーブルで管理し、gameモデルとgame_playerモデルのカラムを同時に更新している点

- 複数のデータベースに跨ってデータを並べ替え、得点ランキングを表示させた点


## 今後

実際にチームのホームページとして機能させ、試合結果等を記載していきたいと考えてます。
また他チームも登録出来るようupdateし、練習試合等が実際に組めるところまで進展させていきます。

