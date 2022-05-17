class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  validates :user, :bike, :booking_end, :booking_start, :total_price, :status, presence: true
end
