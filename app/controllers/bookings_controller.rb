class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def my_bookings
    @bookings = Booking.where(user: current_user)

  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to my_booking_path
    else
      render :edit
    end
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end)
  end

end
