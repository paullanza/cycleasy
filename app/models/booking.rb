class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :bike
  validates :booking_end, :booking_start, :total_price, presence: true

  enum status: {
    Pending: 0,
    Accepted: 1,
    Declined: 2,
    Canceled: 3
  }

end
