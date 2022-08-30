class GameAnswer < ApplicationRecord
  belongs_to :game
  belongs_to :round
  belongs_to :answer
end
