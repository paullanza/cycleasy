class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  validates :booking_end, :booking_start, :total_price, presence: true

  enum status: {
    pending: 0,
    accepted: 1,
    declined: 2,
    canceled: 3
  }

end
