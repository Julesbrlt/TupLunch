class User < ApplicationRecord
  after_create :create_default_chat
  has_one :profile
  has_many :favorites
  has_one :chat, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :recap_recipes, dependent: :destroy
  has_many :selected_recipes, through: :recap_recipes, source: :recipe

  private

  def create_default_chat
    Chat.create!(
      user: self,
      title: "Vide ton frigo avec TupChef",
      model_id: "gpt-4.1-nano"
    )
  end
end
