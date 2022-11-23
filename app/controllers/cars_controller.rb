class CarsController < ApplicationController
  before_action :set_car, only: %i[show]

  def index
    @cars = Car.all
  end

  def show
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(cars_params)
    if @car.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def cars_params
    params.require(:car).permit(:brand, :model, :color, :kilometers, :year, :fuel_consumption, :price, :hp, :description, photos: [])
  end
end
