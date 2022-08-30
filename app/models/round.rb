class Round < ApplicationRecord
  belongs_to :battle
  belongs_to :question
  has_many :game_answers
end
