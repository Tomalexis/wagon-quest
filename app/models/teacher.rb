class Teacher < ApplicationRecord
  belongs_to :lesson
  has_many :battles
  has_one_attached :avatar_map
  has_one_attached :avatar_battle
end
