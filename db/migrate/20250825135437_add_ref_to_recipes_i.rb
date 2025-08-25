class AddRefToRecipesI < ActiveRecord::Migration[7.1]
  def change
    add_reference :recipe_ingredients, :recipe
    add_reference :recipe_ingredients, :ingredient
  end
end
