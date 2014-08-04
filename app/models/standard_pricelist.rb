# == Schema Information
#
# Table name: standard_pricelists
#
#  id         :integer          not null, primary key
#  width      :decimal(, )      not null
#  height     :decimal(, )      not null
#  price      :decimal(, )      not null
#  created_at :datetime
#  updated_at :datetime
#

class StandardPricelist < ActiveRecord::Base
  has_many :shopping_cart_items

  def to_s
    "#{width.to_i}\" x #{height.to_i}\" $#{(price)}"
  end
end
