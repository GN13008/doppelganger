class Reservation < ApplicationRecord
  belongs_to :offer
  belongs_to :user
  has_many :reviews
end
