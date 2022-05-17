class BikesController < ApplicationController
  before_action :find_bike, only: [:show, :destroy]
  def index
    @bikes = Bike.all
  end

  def show
  end

  def destroy
    @bike.destroy if @bike.user == current_user

    redirect_to bikes_path
  end

  private

  def find_bike
    @bike = Bike.find(params[:id])
  end
end
