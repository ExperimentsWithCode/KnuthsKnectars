class CreateStoredIngredients < ActiveRecord::Migration
  def change
    create_table :stored_ingredients do |t|
      t.string :ingredient_name, null: false
      t.integer :ingredient_inventory_id, null:false
      t.integer :amount, null: false
      t.date :date
      t.timestamps
    end
  end
end
