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

---
GO7SA_BLOG  

## アプリケーション概要（なぜ創ったか）

---
所属しているバスケサークルにて、チームのホームページあればいいね、と言う話があり、スキルアップも兼ねて作成することになりました。  
バスケチームで利用できるチームのホームページを想定しております。

## 実装した機能

---

1.slickを利用したアルバムも兼ねたスライダー機能

2.練習試合等を申し込むことのできるチャット機能

3.試合の振り返りができるyoutube埋め込み

4.試合結果等の一覧表示

5.メンバー紹介

6.得点ランキング

7.gemファイルfullcalenderを利用した予定共有カレンダー

主に上記を機能として盛り込みました。

## 工夫した点 こだわりポイント

---

- 自身で勝手に作成したのではなく、メンバーに必要機能をヒアリングし、各機能の実装ごとに感想のヒアリングを実施。

- fullcalenderを利用し、チームでの予定を見える化した

- メンバーの得点を中間テーブルで管理し、複数のデータベースに跨ってデータを並べ替え、表示させた.



## 今後

---

実際にチームのホームページとして機能させ、試合結果等を記載していきたいと考えてます。
また他チームも登録出来るようupdateし、練習試合等が実際に組めるところまで進展させていきます。
