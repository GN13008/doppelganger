class Review < ApplicationRecord
  belongs_to :reservation

  validates :rating, inclusion: { in: [1,2,3,4,5] }, presence: :true
  validates :content, format: { with: /.{6,}/, message: "6 characters at least" }
end
