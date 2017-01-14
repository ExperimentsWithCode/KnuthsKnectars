class CreateIngredientInventory < ActiveRecord::Migration
  def change
    create_table :ingredient_inventories do |t|
      t.string :ingredient_name, null: false
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
