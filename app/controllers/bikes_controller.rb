class BikesController < ApplicationController
  before_action :find_bike, only: [:show]
  def index
    @bikes = Bike.all
  end

  def show
  end

  # Sharon : method New
  def new
    @bike = Bike.new
  end

  # Sharon : method Create
  def create
    @bike = Bike.new(bike_params)
    @bike.user = current_user
    @bike.save
    # redirect to owner bike list
    redirect_to bike_path(@bike)
  end

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:brand, :category, :location, :price_per_day, :description)
  end
end
