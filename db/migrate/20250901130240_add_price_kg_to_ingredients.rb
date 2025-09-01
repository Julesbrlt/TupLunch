class AddPriceKgToIngredients < ActiveRecord::Migration[7.1]
  def change
    add_column :ingredients, :prix_au_kilo, :integer
  end
end
