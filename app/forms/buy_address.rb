class BuyAddress
  include ActiveModel::Model
  attr_accessor :postal_code, :ship_from_id, :city, :address, :building_name, :phone_number, :item_id, :user_id

  with_options presence: true do
    validates :postal_code, format: {with: /\A\d{3}[-]\d{4}\z/ }
    validates :ship_from_id, numericality: { other_than: 1, message: 'Select' }
    validates :city
    validates :phone_number,   length: { maximum: 11}, format: { with:/\d{11}/}
    validates :item_id
    validates :user_id
  end

  def save
    @address = Address.create(postal_code: postal_code, ship_from: ship_from_id, city: city, address: address, building_name: building_name, phone_number: phone_number, item_id: item_id, user_id: user_id)
    buy = Buy.create(item_id: item_id, user_id: user_id)
  end
end
