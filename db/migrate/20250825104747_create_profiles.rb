class CreateProfiles < ActiveRecord::Migration[7.1]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :food_preferences
      t.integer :total_budget
      t.integer :total_calories
      t.integer :total_recipes

      t.timestamps
    end
  end
end
