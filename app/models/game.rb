class Game < ApplicationRecord
  belongs_to :user
  has_many :battles
  has_many :teachers, through: :battles
  has_many :game_answers
  validates :status, inclusion: { in: %w[intro battle map clear] }
end
