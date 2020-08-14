require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '商品の新規登録' do
    context '商品の新規登録がうまくいくとき' do
it "nameとcategoryとiamgeとconditionとdelivery_fee_idとship_fromとdays_until_shipとcontentとpriceが存在すれば登録できる" do
end

  context '出品ががうまくいかないとき' do
    it "nameが空だと登録できない" do
      @item.name = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Name can't be blank")
    end
    it "contentが空だと登録できない" do
      @item.content = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Content can't be blan")
    end
    it "imageが空だと登録できない" do
      @item.image = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Image can't be blank")
    end
    it "販売価格が空だと登録できない" do
      @item.image = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Price can't be blank")
    end
    it "カテゴリーが空だと登録できない" do
      @item.image = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Category Select")
    end
    it "商品の状態が空だと登録できない" do
      @item.image = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Sales status Select")
    end
    it "配送料の負担が空だと登録できない" do
      @item.image = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Shipping fee status Select")
    end
    it "発送元の地域が空だと登録できない" do
      @item.image = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Prefecture Select")
    end
    it "発送までの日数が空だと登録できない" do
      @item.image = ""
      @item.valid?
      expect(@item.errors.full_messages).to include("Scheduled delivery Select")
     end
    end
   end
 end
