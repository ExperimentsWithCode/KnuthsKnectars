class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.integer :product_id, null: false
      t.integer :recipe_id, null: false
      t.string :flavor, null: false
      t.date :date
      t.integer :quantity
      t.timestamps
    end
  end
end
