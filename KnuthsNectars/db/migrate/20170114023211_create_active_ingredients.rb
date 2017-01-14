class CreateActiveIngredients < ActiveRecord::Migration
  def change
    create_table :active_ingredients do |t|
      t.integer :recipe_id, null: false
      t.integer :ingredient_inventory_id, null: false
      t.string :ingredient_name
      t.integer :amount, null: false
      t.timestamps
    end
  end
end
