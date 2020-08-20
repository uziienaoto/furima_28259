require 'rails_helper'

RSpec.describe BuyAddress, type: :model do
  before do
     = FactoryBot.build(:buy_address)
end

describe '商品の購入' do
  context '商品の購入がうまくいくとき' do
    it '必須入力箇所全ての値が存在すれば登録できる' do
      expect().to be_valid
    end