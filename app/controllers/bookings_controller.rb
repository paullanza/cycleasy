class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]
  before_action :find_bike, only: [:create, :new]

  def my_bookings
    @bookings = Booking.where(user: current_user)
  end

  def show
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

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to my_booking_path
    else
      render :edit
    end
  end

  def destroy
    @booking.destroy

    redirect_to my_bookings_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def find_bike
    @bike = Bike.find(params[:bike_id])
  end

  def booking_params
    params.require(:booking).permit(:booking_start, :booking_end)
  end
end
