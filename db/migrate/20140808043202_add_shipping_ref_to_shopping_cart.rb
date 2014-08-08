class AddShippingRefToShoppingCart < ActiveRecord::Migration
  def change
    add_reference :shopping_carts, :shipping, index: true
  end
end
