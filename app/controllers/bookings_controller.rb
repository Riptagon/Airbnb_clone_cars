class BookingsController < ApplicationController
  before_action :authenticate_user!

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new
    @booking.car = Car.find params[:car_id]
    @booking.user = current_user
    if @booking.save
      redirect_to car_bookings_path
    else
      render car_path(@booking.car), status: :unproccesable_entity
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to car_bookings_path(@booking.car), status: :see_other
  end
end
