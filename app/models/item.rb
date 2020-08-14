class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :deliveryfee
  belongs_to_active_hash :shipfrom
  belongs_to_active_hash :daysuntilship

  has_one_attached :image

  #空の投稿を出品できないようにする
  validates :category_id, :condition_id, :delivery_fee_id, :ship_from_id, :days_until_ship_id, presence: true

  #ジャンルの選択が「--」の時は出品できないようにする
  validates :category_id, numericality: { other_than: 1 } 
end

