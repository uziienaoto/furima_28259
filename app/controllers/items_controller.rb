class ItemsController < ApplicationController
  before_action :get_item, only: [:edit, :show, :destroy]
  
  def index
    @items = Item.all.order ('created_at DESC')
  end
  
  def show
  end

  def destroy
      if @item.destroy
         redirect_to root_path
      else
        render :index
      end

  end

  def edit
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
  def get_item 
    @item = Item.find(params[:id])

  end

  def item_params
    params.require(:item).permit(:name, :category_id, :condition_id, :delivery_fee_id, :ship_from_id, :days_until_ship_id, :content, :price, :image).merge(user_id: current_user.id)
  end
end
