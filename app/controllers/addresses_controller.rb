class AddressesController < ApplicationController
  require 'payjp'
  before_action :set_item
  before_action :authenticate_user!
  before_action :selling_user

  def index
    @address = BuyAddress.new
  end

  def selling_user
    redirect_to root_path if current_user.id == @item.user_id
  end


  def new
    
  end

  def create# 購入予定のItemを探す。
    @address = BuyAddress.new(address_params)
    if @address.valid?
      pay_item
      @address.save
      redirect_to root_path
    else
      render :index
    end

  end

  private
  
  def set_item
  @item = Item.find(params[:item_id])
  end

  def address_params
    params.permit(:postal_code, :ship_from_id, :city, :address, :building_name, :phone_number, :item_id).merge(user_id: current_user.id)
  end


  def item_params
    params.permit(:price, :token)
  end

  def pay_item
    Payjp.api_key = 'sk_test_4e1240773fc584f9d2db1180' # PAY.JPテスト秘密鍵
    Payjp::Charge.create(
      amount:set_item[:price],  # 商品の値段 とってきたItemからpriceをぬきとる
      card: params[:token],    # カードトークン
      currency: 'jpy' # 通貨の種類
    )
  end
end
