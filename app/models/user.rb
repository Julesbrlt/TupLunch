class User < ApplicationRecord
  has_one :profile
  has_many :favorites, through: :favorites, source: :recipe
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
