class Teacher < ApplicationRecord
  belongs_to :lesson
  has_many :battles
end
