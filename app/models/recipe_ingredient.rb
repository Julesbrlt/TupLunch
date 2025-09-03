class RecipeIngredient < ApplicationRecord
  belongs_to :recipe
  belongs_to :ingredient

  def just_price
    number_str = self.quantity[/\A\s*(\d+(?:[.,]\d+)?)/, 1]
    value = number_str.tr(',', '.').to_f
    value*ingredient.prix_au_kilo
  end

end
