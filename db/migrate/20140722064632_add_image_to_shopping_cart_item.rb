class AddImageToShoppingCartItem < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :image, :string
  end
end
