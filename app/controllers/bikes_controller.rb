class BikesController < ApplicationController

  before_action :find_bike, only: [:show, :edit, :update, :destroy]

  def index
    @bikes = Bike.all
  end

  def show
    @booking = Booking.new
  end
  # Sharon : method New
  def new
    if current_user == true
      @bike = Bike.new
    else
      redirect_to root_path
    end

  end

  # Sharon : method Create
  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    if @bike.save
      redirect_to my_bikes_path(@bike)
    else
      render "new"
    end
  end

  def edit
  end

  def update
    if @bike.update(bike_params)
      redirect_to @bike, notice: 'Your updated bike is ready.'
    else
      render :edit
    end
  end

  def destroy
    @bike.destroy if @bike.user == current_user

    redirect_to bikes_path
  end

  def my_bikes
    @bikes = Bike.where(user: current_user)
  end

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:brand, :category, :location, :price_per_day, :description)
  end
end
