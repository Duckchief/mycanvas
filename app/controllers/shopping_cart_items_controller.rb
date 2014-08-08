class ShoppingCartItemsController < ApplicationController
  before_action :set_cart

  def new
    @item = ShoppingCartItem.new
    @sp = StandardPricelist.all
  end

  def create
    # binding.pry
    cart_item = @cart.shopping_cart_items.build(item_params)
    quantity = item_params[:quantity].to_i

    unless item_params[:standard_pricelist].nil?
      cart_item.price = quantity*cart_item.standard_pricelist.price.to_i
      # pick up the shipping charge
    end

    if cart_item.save
      # check if the user has a home delivery address already set
      # if not then redirect user to enter his home delivery address in his user profile
      redirect_to root_path
    else
      @item = cart_item
      @sp = StandardPricelist.all
      render :new
    end
  end

  def show

  end



private

  def item_params
    params.require(:shopping_cart_item).
        permit(:standard_pricelist_id, :price, :quantity, :edge_option, :layout, :standard_pricelist, :frame_option, :copyright_owner, :image)
  end

  def set_cart
    # binding.pry
    @cart = ShoppingCart.find_by(id: session[:cart_id]) || ShoppingCart.create
    session[:cart_id] = @cart.id
  end


end
