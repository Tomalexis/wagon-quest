class Lesson < ApplicationRecord
  has_many :questions
  has_one :teacher
end
