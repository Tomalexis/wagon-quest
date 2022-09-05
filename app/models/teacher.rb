class Teacher < ApplicationRecord
  belongs_to :lesson
  has_many :battles
  has_one_attached :avatar_map
  has_one_attached :avatar_battle
  validates :status, inclusion: { in: %w[tutorial regular final_boss secret_boss] }
end
