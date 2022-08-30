class Answer < ApplicationRecord
  belongs_to :question
  has_many :game_answers
  validates :kind, inclusion: { in: %w[weird misleading correct perfect] }
end
