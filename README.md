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
| latitude         | float      |                                |
| longitude        | float      |                                |
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
------
# アプリケーション説明

## ＜アプリケーション名＞

- みんなで作ろう釣りMAP(in愛知)

## ＜アプリケーション概要＞
- ユーザー登録・編集ができます
- 釣果投稿が投稿・編集・削除できます
- ユーザーが登録した釣果投稿の一覧が見れます
- カテゴリー別(市町村・魚種)で検索して投稿を絞り込んで見ることができます
- 他人の投稿にコメントすることできます

## ＜URL＞
- https://fishing-app31534.herokuapp.com/


### ＜Basic認証ID＞
- ID: user
- password: password

### ＜ログインユーザー＞

#### ＜ユーザー1＞
- メールアドレス: user1@email
- パスワード: pass123

#### ＜ユーザー2＞
- メールアドレス: user2@email
- パスワード: pass123

## ＜利用方法＞

### ＜ユーザーログイン＞
- トップ画面遷移後画面右上の『ログイン』ボタンを押してログイン画面に遷移します。
- ユーザー１又はユーザー２の情報を使用してログインします。

### ＜釣果投稿＞
- 右上にある『釣果投稿』ボタンを押すと釣果投稿ページに遷移することができ釣果を投稿できます。
- 釣果投稿では必須項目を入力していただき『投稿する』ボタンを押すと釣果が投稿できるようになっています。

### ＜釣果一覧＞
- トップページになっています。全画面の左上にあるロゴをクリックすると詳細ページに遷移するようになっています。
- 覧ページに掲載してある投稿の画像をクリックするとクリックした釣果の詳細ページへ遷移します。
- 同じく名前をクリックすると釣果の投稿者の詳細ページへ、<br>魚種をクリックするとその魚種が含まれた投稿一覧ページへ<br>市町村をクリックするとその市町村が含まれた投稿一覧ページへ遷移するようになっています。（この機能は詳細ページにもついています）

### <釣果詳細>
- 釣果が詳しく見れるページになっています。
- ユーザー同士でコメントし合うことが可能です

## <目指した解決課題>
- ペルソナ: 私を含めた釣りを趣味としている人です。
- 解決課題: どの季節にどこでどのような仕掛けで何が釣れるのか一眼でわかるような物が無い。釣り人同士で釣果を共有しあって釣れる魚の一覧が作りたい

## <洗い出した要件>
-