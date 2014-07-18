class AddStandardPriceListToShoppingCartItem < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :standard_pricelist_id, :integer
  end
end
