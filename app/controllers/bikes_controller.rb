class BikesController < ApplicationController
  before_action :find_bike, only: [:show, :edit, :update]
  def index
    @bikes = Bike.all
  end

  def show
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

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end

  def bike_params
    params.require(:bike).permit(:brand, :category, :location, :price_per_day, :description)
  end
end
