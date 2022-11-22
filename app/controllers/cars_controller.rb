class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
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

  def cars_params
    params.require(:car).permit(:brand, :model, :color, :kilometers, :year, :fuel_consumption, :price, :hp, :photo)
  end
end
