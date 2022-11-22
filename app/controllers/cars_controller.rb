class CarsController < ApplicationController
  before_action :set_car, only: %i[show]

  def index
    @cars = Car.all
  end

  def show
  end

  def new

  end

  def create

  end

  def destroy
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
end
