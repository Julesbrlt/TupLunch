class CreateIngredients < ActiveRecord::Migration[7.1]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :price_per_unit
      t.integer :unit

      t.timestamps
    end
  end
end
