class ItemsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
  end
  
  def new
    @item = Item.new
  end

  def create
      @item = Item.new(item_params)
      if @item.save
        redirect_to root_path
      else
        render :new
      end
  end

     private

  def item_params
    params.require(:item).permit(:name, :category_id, :condition_id, :delivery_fee_id, :ship_from_id, :days_until_ship_id, :content, :price ).merge(user_id: current_user.id)
  end

end


