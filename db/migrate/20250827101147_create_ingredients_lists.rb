class CreateIngredientsLists < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients_lists do |t|
      t.references :recap_recipe, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
