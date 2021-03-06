# == Schema Information
#
# Table name: shopping_cart_items
#
#  id                    :integer          not null, primary key
#  owner_id              :integer
#  owner_type            :string(255)
#  quantity              :integer
#  item_id               :integer
#  item_type             :string(255)
#  price                 :float
#  created_at            :datetime
#  updated_at            :datetime
#  standard_pricelist_id :integer
#  layout                :integer
#  framesize             :decimal(, )
#  frame_option          :integer
#  edge_option           :integer
#  copyright_owner       :boolean          default(FALSE)
#  image                 :string(255)
#

class ShoppingCartItem < ActiveRecord::Base
  acts_as_shopping_cart_item
  belongs_to :standard_pricelist
  mount_uploader :image, ImageUploader
  monetize :price_cents

  validates :image, :quantity, :standard_pricelist_id, :edge_option, presence: true

  validates :image, allow_blank: false, format: {
      with: /\w+\.(gif|jpg|png)\z/i,
      message: "must be a GIF, JPG, PNG image only"
  }
end

#model =  Singular with camel case
#tablename = pluralized with snake case