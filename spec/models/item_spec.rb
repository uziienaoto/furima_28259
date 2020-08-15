require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
    @item.image = fixture_file_upload('/endo.png')
  end

  describe '商品の新規登録' do
    context '商品の新規登録がうまくいくとき' do
      it '必須入力箇所全ての値が存在すれば登録できる' do
        expect(@item).to be_valid
      end

      it '販売価格が３００円以上なら登録できる' do
        expect(@item).to be_valid
      end
      it '販売価格が９９９９９９９円以下なら登録できる' do
        expect(@item).to be_valid
      end
    end
    context '出品ががうまくいかないとき' do
      it 'nameが空だと登録できない' do
        @item.name = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Name can't be blank")
      end
      it 'contentが空だと登録できない' do
        @item.content = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Content can't be blank")
      end
      it 'imageが空だと登録できない' do
        @item.image = nil
        @item.valid?
        expect(@item.errors.full_messages).to include("Image can't be blank")
      end
      it '販売価格が空だと登録できない' do
        @item.price = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Price can't be blank")
      end
      it 'カテゴリーが1だと登録できない' do
        @item.category_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Category Select')
      end
      it '商品の状態が1だと登録できない' do
        @item.condition_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Condition Select')
      end
      it '配送料の負担が1だと登録できない' do
        @item.delivery_fee_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Delivery fee Select')
      end
      it '発送元の地域が1だと登録できない' do
        @item.ship_from_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Ship from Select')
      end
      it '発送までの日数が1だと登録できない' do
        @item.days_until_ship_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Days until ship Select')
      end
      it '300円以下だと登録できない' do
        @item.price = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be greater than or equal to 300')
      end
      it '9999999円以上だと登録できない' do
        @item.price = '10000000'
        @item.valid?
        expect(@item.errors.full_messages).to include('Price must be less than 9999999')
      end
    end
  end
end
