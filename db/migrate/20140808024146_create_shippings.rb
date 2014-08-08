class CreateShippings < ActiveRecord::Migration
  def change
    create_table :shippings do |t|
      t.string :name

      t.timestamps
    end
  end
end
