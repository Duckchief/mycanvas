class ShoppingCartItemsController < ApplicationController
  before_action :set_cart

  def new
    @item = ShoppingCartItem.new
    @sp = StandardPricelist.all
  end

  def create
    # binding.pry

    cart_item = @cart.shopping_cart_items.build(item_params)
    cart_item.quantity = 10
    cart_item.price = 10

    cart_item.save

    redirect_to root_path
  end

  def show

  end



private

  def item_params
    params.require(:shopping_cart_item).
        permit(:standard_pricelist_id, :edge_option, :layout, :standard_pricelist, :frame_option, :copyright_owner, :image)
  end

  def set_cart
    # binding.pry
    @cart = ShoppingCart.find_by(id: session[:cart_id]) || ShoppingCart.create
    session[:cart_id] = @cart.id
  end


end
