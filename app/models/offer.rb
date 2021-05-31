class Offer < ApplicationRecord
  belongs_to :user
  has_many :reservations
  validates :disponibility, presence: true
  validates :localisation, presence: true 
end
