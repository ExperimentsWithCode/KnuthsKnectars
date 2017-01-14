class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :date
      t.string :shipping_address
      t.text :notes
    end
  end
end
