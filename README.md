# PhotoBlogのDB設計

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
