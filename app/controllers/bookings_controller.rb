class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
    @boat = Boat.find(params[:boat_id])
  end

  def create
  @booking = Booking.new(booking_params)
  @booking.user = current_user
  @boat = Boat.find(params[:boat_id])
  @booking.boat = @boat

  if @booking.save
    redirect_to bookings_path
  else
    render :new
  end
  end

  # def show

  # end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_people)
  end
end
