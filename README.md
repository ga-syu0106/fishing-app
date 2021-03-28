# テーブルまとめ

## usersテーブル

| Column             | Type    | Options     |
| ------------------ | ------- | ----------- |
| email              | string  | null: false |
| encrypted_password | string  | null: false |
| nickname           | string  | null: false |
| gender             | string  | null: false |
| municipality_id    | integer | null: false |
| age                | integer | null: false |
| history            | integer | null: false |
| style_id           | integer | null: false |
| profile            | text    | null: false |

### Association

- has_many :posts

## postsテーブル

| Column           | Type       | Options                        |
| ---------------- | ---------- | ------------------------------ |
| fishing_date     | date       | null: false                    |
| fishing_time     | time       | null: false                    |
| municipality_id  | integer    | null: false                    |
| spot             | string     |                                |
| weather_id       | integer    | null: false                    |
| fish_kind_id     | integer    | null: false                    |
| fish_name        | string     |                                |
| gimmick          | string     |                                |
| rod              | string     |                                |
| reel             | string     |                                |
| line             | string     |                                |
| explanation      | text       |                                |
| user             | references | null: false, foreign_key: true |

### Association

- belongs_to :user
