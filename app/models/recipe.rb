class Recipe < ApplicationRecord
  # has_neighbors :embedding
  # after_create :set_embedding
  has_many :recipe_ingredients
  has_many :favorites
  has_many :ingredients, through: :recipe_ingredients
  has_many_attached :photos


  has_many :recap_recipes, dependent: :destroy

  private

   def set_embedding
    embedding = RubyLLM.embed("Recipe: #{name}. Description: #{description}. Price: #{price}. Time: #{time}. Calories: #{calories}.")
    update(embedding: embedding.vectors)
  end

end
