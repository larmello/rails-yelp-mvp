class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, numericality: { only_integer: true }, inclusion: { in: (0..5).to_a }
  validates :content, presence: true
end
