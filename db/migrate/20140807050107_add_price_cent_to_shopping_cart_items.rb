class AddPriceCentToShoppingCartItems < ActiveRecord::Migration
  def change
    add_money :shopping_cart_items, :price
  end
end
