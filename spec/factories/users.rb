FactoryBot.define do
  factory :user do
    nickname              { 'abe' }
    email                 { 'kkk@gmail.com' }
    encrypted_password    { 'aaaa0000' }
    family_name           { '山田' }
    first_name            { '太郎' }
    family_name_kana      { 'ヤマダ' }
    first_name_kana       { 'タロウ' }
  end
end
