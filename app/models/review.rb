class Review < ApplicationRecord
  belongs_to :reservation
  validates :rating, number: { in:  1..5 }, presence: :true
  validates :content, length:  { in: 6..200 }, presence: :true
end
