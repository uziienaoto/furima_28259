class AddressesController < ApplicationController
  before_action :authenticate_user!
  before_action :selling_user

  def index
  end

  def selling_user
    @item = Item.find(params[:item_id])
    if current_user.id == @item.user_id
    redirect_to root_path
    end
  end

# def create
#   @order = Order.new(price: order_params[:price])
#   if @order.valid?
#     pay_item
#     @order.save
#     return redirect_to root_path
#   else
#     render 'index'
# end
# private

#   def order_params
#     params.permit(:price, :token)
# end

# def pay_item
#   Payjp.api_key = "sk_test_4e1240773fc584f9d2db1180"  # PAY.JPテスト秘密鍵
#   Payjp::Charge.create(
#     amount: order_params[:price],  # 商品の値段
#     card: order_params[:token],    # カードトークン
#     currency:'jpy'                 # 通貨の種類
#   )
# end
# end
end
