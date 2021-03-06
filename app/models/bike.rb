class Bike < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :delete_all
  validates :brand, :category, :location, :price_per_day, :description, presence: true
  validates :description, length: { minimum: 10 }
  validates :price_per_day, numericality: { only_integer: true }
  has_one_attached :photo
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
