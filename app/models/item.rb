class Item < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category
  belongs_to_active_hash :condition
  belongs_to_active_hash :deliveryfee
  belongs_to_active_hash :shipfrom
  belongs_to_active_hash :daysuntilship

  has_one_attached :image
  belongs_to :user
  has_one    :purchase
  has_one    :buy
  # 空の投稿を出品できないようにする
  with_options presence: true do
    validates :name
    validates :content
    validates :image
    validates :category_id, numericality: { other_than: 1, message: 'Select' }
    validates :condition_id, numericality: { other_than: 1, message: 'Select' }
    validates :delivery_fee_id, numericality: { other_than: 1, message: 'Select' }
    validates :ship_from_id, numericality: { other_than: 1, message: 'Select' }
    validates :days_until_ship_id, numericality: { other_than: 1, message: 'Select' }
    validates :price, numericality: { only_integer: true, greater_than_or_equal_to: 300, less_than: 9_999_999 }
  end
end
