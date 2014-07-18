class AddFramesizeAndEdgeOptionAndCopyrightOwnerToShoppingCartItem < ActiveRecord::Migration
  def change
    add_column :shopping_cart_items, :framesize, :decimal
    add_column :shopping_cart_items, :frame_option, :integer
    add_column :shopping_cart_items, :edge_option, :integer
    add_column :shopping_cart_items, :copyright_owner, :boolean, default: false
  end
end
