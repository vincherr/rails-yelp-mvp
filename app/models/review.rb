class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (0..5),
    message: "%{value} is not a valid rating - pick a number between 1 and 5" }
end
