class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, :content, presence: true
  validates :rating, inclusion: { in: (0..5), allow_nil: false }
  validates :rating, numericality: { only_integer: true }
end
