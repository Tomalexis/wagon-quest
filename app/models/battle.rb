class Battle < ApplicationRecord
  belongs_to :game
  belongs_to :teacher
  has_many :rounds
  validates :status, inclusion: { in: %w[battle_intro round_intro round_core round_outro battle_outro] }
end
