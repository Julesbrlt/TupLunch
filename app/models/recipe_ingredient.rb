class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  def just_price
    quantity * (ingredient.prix_au_kilo || 1)
  end

  def quantity_for(servings = 1)
    (just_price * servings)
  end

  def price_for(servings = 1)
    quantity_for(servings) * just_price
  end

end
