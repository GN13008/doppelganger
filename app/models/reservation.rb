class Reservation < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  has_many :reviews, dependent: :destroy
  validates :start_date, presence: true 
  validates :end_date, presence: true 
  validates :status, inclusion: {in: ["accept", "decline", "demand", "passed", "canceled", nil]}
end

