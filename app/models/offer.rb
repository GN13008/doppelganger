class Offer < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :reviews, through: :reservations
  validates :disponibility, presence: true
  validates :localisation, presence: true 
end
