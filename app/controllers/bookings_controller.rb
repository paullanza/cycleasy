class BookingsController < ApplicationController
  before_action :find_booking, only: [:show]

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end

  def show
  end

  # Where is the delete method?

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end
end
