class StandardPricelistsController < ApplicationController
  def index
    @pricelist = StandardPricelist.order("price asc")
  end

  def show
    @pricelist = StandardPricelist.find(params[:id])
  end

end
