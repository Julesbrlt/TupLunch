class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  def just_price
    quantity * ingredient.prix_au_kilo
  end

  # def just_price
  #   number_str = self.quantity[/\A\s*(\d+(?:[.,]\d+)?)/, 1]
  #   value = number_str.tr(',', '.').to_f
  #   value*ingredient.prix_au_kilo
  # end

  def quantity_for(servings = 1)
    (just_price * servings).round(2)
  end

  def price_for(servings = 1)
    quantity_for(servings) * just_price
  end

end
