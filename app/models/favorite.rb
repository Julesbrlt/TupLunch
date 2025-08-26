class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
<<<<<<< HEAD
=======
  validates :user_id, presence: true
  validates :recipe_id, presence: true
  validates :recipe_id, uniqueness: { scope: :user_id, message: "est déjà en favoris" }
>>>>>>> 9a0e592a7318182a4ab834a1b852650fb1996257
end
