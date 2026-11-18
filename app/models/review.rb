class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, presence: true
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: { in: (0..5), message: "Rating should between 0(=worst) and 5(=best)" }
end
