# アプリ名
## 「PhotoBlog」
&emsp;IPアドレス：http://54.250.72.200/

# 開発環境
・haml/scss

・Ruby

・Ruby on Rails

・CoffeeScript

# アプリ機能
### 1.ユーザーの新規登録/ログイン/ログアウト

### 2.ブログの投稿
&emsp;画像、タイトル、本文を添えてブログを投稿できます。

&emsp;投稿したブログはホーム画面に表示されます。

### 3.ブログの詳細表示/削除/編集
&emsp;投稿後、ホーム画面に表示されたブログを選択すると、詳細画面に遷移します。

&emsp;詳細画面から、ブログを編集、削除できます。
### 4.画像のサムネイル表示
&emsp;ブログを投稿/編集する際に、選択した画像のサムネイルを表示するようにしました。

# DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|name|string|null: false|
|password|string|null: false|
### Association
- has_many :articles, dependent: :destroy

## articlesテーブル
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|body|text|null: false|
|user_id|integer|foreign_key: true|
|image_id|integer|foreign_key: true|
### Association
- belongs_to :user
