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

| Column                | Type   | Options     |
| --------              | ------ | ----------- |
| nickname              | string | null: false |
| email                 | string | null: false |
| password              | string | null: false |
| password_confirmation | string | null: false |
| family_name           | string | null: false |
| first_name            | string | null: false |
| family_name_kana      | string | null: false |
| first_name_kane       | string | null: false |
| birthday              | data   | null: false |

### Association
- has_many :items
- has_many :buys

## items テーブル

| Column          | Type       | Options     |
| ------          | ------     | ----------- |
| name            | string     | null: false |
| content         | text       | null: false |
| price           | string     | null: false |
| user            | references | null: false |
| image           | string     | null: false |

### Association
- belongs_to :users
- has_one    :purchases
- has_one    :buys

## buys テーブル

| Column  | Type       | Options                        |
| ------  | ---------- | ------------------------------ |
| item    | references | null: false, foreign_key: true |
| user    | references | null: false, foreign_key: true |

### Association
- belongs_to :users
- belongs_to :items

## purchases テーブル

| Column           | Type        | Options     |
| ------           | ------      | ----------- |
| postal_code      | integer     | null: false |
| prefecture       | string      | null: false |
| city             | string      | null: false |
| address          | string      | null: false |
| building_name    | string      | null: false |
| phone_number     | string     | null: false |
| item             | references  | null: false |

### Association
- belongs_to :items