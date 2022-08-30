class Question < ApplicationRecord
  belongs_to :lesson
  has_many :answers
  has_many :rounds
end
