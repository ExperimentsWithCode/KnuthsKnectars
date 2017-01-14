class CreateProductInventory < ActiveRecord::Migration
  def change
    create_table :product_inventories do |t|
      t.string :name, null: false
      t.integer :quantity, null: false
      t.timestamps
    end
  end
end
