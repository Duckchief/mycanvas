class AddPriceToShipping < ActiveRecord::Migration
  def change
    add_money :shippings, :price
  end
end
