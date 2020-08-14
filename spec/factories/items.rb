FactoryBot.define do
  factory :item do
    name                {"お茶"}
    category_id         {"2"}
    condition_id        {"2"}
    delivery_fee_id     {"2"}
    ship_from_id        {"2"}
    days_until_ship_id  {"2"}
    content             {"美味しいお茶です"}
    price               {"5000"}
  end
end
