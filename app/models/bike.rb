class Bike < ApplicationRecord
  belongs_to :user
  validates :brand, :category, :location, :price_per_day, :description, presence: true
  validates :description, length: { minimum: 10 }
  validates :price_per_day, numericality: { only_integer: true }
end
