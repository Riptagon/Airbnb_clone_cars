class BookingsController < ApplicationController
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
      redirect_to root_path
    else
      render car_path(@booking.car), status: :unproccesable_entity
    end
  end
end
