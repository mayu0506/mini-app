# README

## blogsテーブル

|Column|Type|Options|
|------|----|-------|
|text|text|
|user|references|null: false, foreign_key: true|

### Association
- belongs_to :user

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|text|null: false|
|encrypted_password|null: false|

### Association
- has_many :blogs
