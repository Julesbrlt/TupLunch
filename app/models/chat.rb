class Chat < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
  belongs_to :recipe
=======
  acts_as_chat
  has_many :messages, dependent: :destroy
  belongs_to :user
>>>>>>> 9a0e592a7318182a4ab834a1b852650fb1996257
end
