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


## items テーブル

| Column          | Type       | Options     |
| ------          | ------     | ----------- |
| name            | string     | null: false |
| content         | text       | null: false |
| category        | string     | null: false |
| condition       | string     | null: false |
| delivery_fee    | string     | null: false |
| ship_from       | string     | null: false |
| days_until_ship | string     | null: false |
| price           | string     | null: false |
| user_id         | references | null: false |


## gets テーブル

| Column  | Type       | Options                        |
| ------  | ---------- | ------------------------------ |
| item_id | references | null: false, foreign_key: true |
| room_id | references | null: false, foreign_key: true |

## purchases テーブル

| Column           | Type        | Options     |
| ------           | ------      | ----------- |
| postal_code      | integer     | null: false |
| prefecture       | string      | null: false |
| city             | string      | null: false |
| address          | string      | null: false |
| building_name    | string      | null: false |
| phone_number     | integer     | null: false |
| item_id          | references  | null: false |
