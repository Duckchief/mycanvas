class ShoppingCartItem < ActiveRecord::Base
  acts_as_shopping_cart_item

  belongs_to :standard_pricelist
end
#model =  Singular with camel case
#tablename = pluralized with snake case