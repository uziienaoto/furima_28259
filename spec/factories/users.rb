FactoryBot.define do
  factory :user do
    nickname              { 'abe' }
    email                 { Faker::Internet.email }
    password              { 'aaaa0000' }
    family_name           { '山田' }
    first_name            { '太郎' }
    family_name_kana      { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
    birthday              { '1930-01-01' }
  end
end
