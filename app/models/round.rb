class Round < ApplicationRecord
  belongs_to :battle
  belongs_to :question
  has_many :game_answers
  has_many :answers, through: :game_answers
end
