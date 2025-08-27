class AddCheckedToIngredientsLists < ActiveRecord::Migration[7.1]
  def change
    add_column :ingredients_lists, :checked, :boolean
  end
end
