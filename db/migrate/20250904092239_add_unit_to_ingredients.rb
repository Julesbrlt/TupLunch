class AddUnitToIngredients < ActiveRecord::Migration[7.1]
  def change
    add_column :recipe_ingredients, :unit, :string
    remove_column :recipe_ingredients, :quantity, :string
    add_column :recipe_ingredients, :quantity, :float
    #Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
