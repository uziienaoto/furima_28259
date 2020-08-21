FactoryBot.define do
  factory :buy_address do
    postal_code      { '332-0004' }
    ship_from_id        { 3 }
    city             { "川越" }
    address          { "領家" }
    building_name    { "家" }
    phone_number     { '09036942281' }
    association :item
    association :user
  end
end
