class BookingsController < ApplicationController
  before_action :find_bike, only: [:create]
  def my_bookings
    @bookings = Booking.where(user: current_user)
  end

  def new
    @bookings = Booking.new
  end

  def create
    @booking = booking.new
    @booking.
  end

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:booking_start, :booking_end, :total_price)
  end
end
