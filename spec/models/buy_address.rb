require 'rails_helper'

RSpec.describe BuyAddress, type: :model do
  before do
    buyer = FactoryBot.create(:user)
    item = FactoryBot.create(:item)
    binding.pry
    @buy_address = FactoryBot.build(:buy_address, item_id: item.id, user_id: buyer.id)
  end

  
  
  describe '商品の購入' do
    context '商品の購入がうまくいくとき' do
      it '必須入力箇所全ての値が存在すれば登録できる' do
        expect(@buy_address).to be_valid
      end
    end

    context '購入ががうまくいかないとき' do
      it '郵便番号が空でが-無しだと登録できない' do
        @buy_address.postal_code = ''
        @buy_address.valid?
        expect(@buy_address.errors.full_messages).to include("")
      end
      
      it '都道府県が空だと登録できない' do
        @buy_address.ship_from_id = ''
        @buy_address.valid?
        expect(@buy_address.errors.full_messages).to include("")

        it '都道府県が1だと登録できない' do
          @buy_address.ship_from_id = '1'
          @buy_address.valid?
          expect(@buy_address.errors.full_messages).to include("")
        end
      end
      it '市区町村が空だと登録できない' do
        @buy_address.city = ''
        @buy_address.valid?
        expect(@buy_address.errors.full_messages).to include("")
      end
      it '番地が空だと登録できない' do
        @buy_address.address = ''
        @buy_address.valid?
        expect(@buy_address.errors.full_messages).to include("")
      end
      it '携帯電話が空だと登録できない' do
        @buy_address.phone_number = ''
        @buy_address.valid?
        expect(@buy_address.errors.full_messages).to include("")
      end
        it '携帯電話が11桁以上だと登録できない' do
          @buy_address.phone_number = ''
          @buy_address.valid?
          expect(@buy_address.errors.full_messages).to include("")
      end
    end
  end
end



