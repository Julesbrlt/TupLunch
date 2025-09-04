class ChangeColumnsToIngredients < ActiveRecord::Migration[7.1]
  def change
    remove_column :ingredients, :prix_au_kilo
  end

end
