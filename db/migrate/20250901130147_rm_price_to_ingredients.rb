class RmPriceToIngredients < ActiveRecord::Migration[7.1]
  def change
    remove_column :ingredients, :price_per_unit
  end
end
