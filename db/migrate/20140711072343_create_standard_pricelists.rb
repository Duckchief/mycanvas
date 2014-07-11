class CreateStandardPricelists < ActiveRecord::Migration
  def change
    create_table :standard_pricelists do |t|
      t.decimal :width, :null => false
      t.decimal :height, :null => false
      t.decimal :price, :null => false

      t.timestamps
    end
  end
end
