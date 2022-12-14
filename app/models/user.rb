class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :games
  has_many :battles, through: :games
  has_many :rounds, through: :battles

  has_one_attached :avatar_map
  has_one_attached :avatar_battle

  validates :username, presence: true, length: { maximum: 10 }, on: :update
end
