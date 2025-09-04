class AddServingsToRecapRecipes < ActiveRecord::Migration[7.1]
  def change
    add_column :recap_recipes, :servings, :integer, null: false, default: 1
  end
end
