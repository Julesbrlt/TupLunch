class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
  validates :user_id, presence: true
  validates :recipe_id, presence: true
  validates :recipe_id, uniqueness: { scope: :user_id, message: "est déjà en favoris" }
end
