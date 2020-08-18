class Address < ApplicationRecord
  with_options presence: true do
    validates :price
    belongs_to :item
end
