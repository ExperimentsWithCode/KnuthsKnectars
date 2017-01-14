class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.string :item_name, null: false
      t.integer :customer_id, null: false
      t.integer :order_id, null: false
      t.float :price
      t.integer :amount
      t.timestamps
    end
  end
end
