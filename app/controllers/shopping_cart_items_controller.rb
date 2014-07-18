class ShoppingCartItemsController < ApplicationController
  def new
    @item = ShoppingCartItem.new
    @sp = StandardPricelist.all
  end

  def create
    # binding.pry
    @item = ShoppingCartItem.new(item_params)
    @item.save
    redirect_to root_path
  end

  def show

  end



private

  def item_params
    params.require(:shopping_cart_item).
        permit(:standard_pricelist_id, :edge_option, :layout, :standard_pricelist, :frame_option, :copyright_owner)
  end

end
