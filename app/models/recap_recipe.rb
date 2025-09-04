class RecapRecipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  attribute :servings, default: 1

  validates :user_id, presence: true
  validates :recipe_id, presence: true
  validates :recipe_id, uniqueness: {
    scope: :user_id,
    message: "est déjà dans votre sélection"
  }

  validates :servings , numericality: { only_integer: true, greater_than: 0, less_than_or_equal_to: 10 }

  has_one :ingredients_list, dependent: :destroy

end
