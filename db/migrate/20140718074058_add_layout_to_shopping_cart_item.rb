class AddLayoutToShoppingCartItem < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :layout, :integer
  end
end