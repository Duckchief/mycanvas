class RemovePriceFromShoppingCartItems < ActiveRecord::Migration
  def change
    remove_column :shopping_cart_items, :price
  end
end
