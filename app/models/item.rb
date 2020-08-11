class Article < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre

  #空の投稿を出品できないようにする
  validates :category, :condition, :delivery_fee, :ship_from, :days_until_ship, presence: true

  #ジャンルの選択が「--」の時は出品できないようにする
  validates :genre_id, numericality: { other_than: 1 } 
end

