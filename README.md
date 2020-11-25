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

# テーブル設計

## users テーブル

| Column             | Type   | Options     |
| --------           | ------ | ----------- |
| nickname           | string | null: false |
| profession         | string | null: false |
| feature1           | string | null: false |
| feature2           | string | null: false |
| email              | string | null: false |
| password           | string | null: false |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_reading  | string | null: false |
| first_name_reading | string | null: false |
| birthday           | date   | null: false |

### Association

- has_many :spaces_users
- has_many :spaces, through: space_users
- has_many :messages

## spaces テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| info   | text   | null: false |

### Association

- has_many :space_users
- has_many :users, through: space_users
- has_many :messages

## space_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| space  | references | null: false, foreign_key: true |

### Association

- belongs_to :space
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| space   | references | null: false, foreign_key: true |

### Association

- belongs_to :space
- belongs_to :user


<!-- 『ペルソナ』
・専門職への転職（就職）目指して
・スクール（もしくは独学）で専門スキルを学習中の
・20〜40歳くらいの男女

『解決すべき課題』
①毎日の学習の継続
②学習の目的や将来像の明確（言語）化
③アウトプット中心の学び
という『学習』に効果的な方法を採りやすく
するために、1つのアプリ内で完結させる。

『ユーザーストーリー』
前記の「解決すべき課題」に対して
①ダイアリー
②自己紹介
③メッセージ
によって解決する。 -->