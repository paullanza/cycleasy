class BookingsController < ApplicationController
  before_action :find_bike, only: [:create, :new]

  def my_bookings
    @bookings = Booking.where(user: current_user)
    @my_bikes = Booking.where(bike: current_user)
  end

  def new
    @bookings = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.bike = @bike
    @booking.user = current_user
    @booking.total_price = (@booking.booking_end - @booking.booking_start) * @bike.price_per_day

    if @booking.save
      redirect_to my_booking_path(@booking)
    else
      render 'bikes/show'
    end
  end

  def accepted
    @booking = Booking.find(params[:id])
    @booking.accepted! if @booking.bike.user == current_user

    redirect_to my_booking_path
  end

  def declined
    @booking = Booking.find(params[:id])
    @booking.declined! if @booking.bike.user == current_user

    redirect_to my_booking_path
  end

  private

  def find_bike
    @bike = Bike.find(params[:bike_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end, :total_price)
  end
end
