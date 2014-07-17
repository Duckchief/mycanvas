class CreateOrdersController < ApplicationController
  def index
    @product = ShoppingCartItem.new
  end

end
