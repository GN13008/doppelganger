class Offer < ApplicationRecord
  geocoded_by :localisation
  after_validation :geocode, if: :will_save_change_to_localisation?
  belongs_to :user
  has_many :reservations, dependent: :destroy
  has_many :reviews, through: :reservations
  validates :disponibility, presence: true
  validates :localisation, presence: true
  validates :price, presence: true
  validates :disponibility, inclusion: { in: ["Weekend", "Week", "Afterwork", "Every Day"], message: "Please select one of the disponibility" }
  include PgSearch::Model
  pg_search_scope :search_by_localisation,
    against: [:localisation],
    using: {
      tsearch: { prefix: true }
    }
  pg_search_scope :search_by_disponibility,
    against: [:disponibility],
    using: {
      tsearch: { prefix: true }
    }
end
