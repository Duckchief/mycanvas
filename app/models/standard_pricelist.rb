class StandardPricelist < ActiveRecord::Base
  has_many :shopping_cart_items

  def to_s
    "#{width} x #{height} $#{(price)}"
  end
end
