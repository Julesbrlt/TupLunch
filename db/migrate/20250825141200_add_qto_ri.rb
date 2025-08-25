class AddQtoRi < ActiveRecord::Migration[7.1]
  def change
    add_column :recipe_ingredients, :quantity, :string
    remove_column :ingredients, :unit
  end
end
