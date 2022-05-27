class BookingsController < ApplicationController

  def index
    @bookings = Booking.all
    #filtro con el user id - aplicarlo con Active record bookings.where user=currentuser
    #fila 4 no es necesaria
  end

  def new
    @booking = Booking.new
    # @boat = Boat.find(params[:boat_id])
  end

  def create
  @booking = Booking.new(booking_params)
  @booking.user = current_user
  @boat = Boat.find(params[:boat_id])
  #@booking = Booking.find(params[:id])
  @booking.boat = @boat
  #@booking.id = 1
  @booking.save

  if @booking.save
    redirect_to boat_booking_path(@boat, @booking)
  else
    render :new
  end
  end

  def show
    @booking = Booking.find(params[:id])
    @boat = Boat.find(params[:boat_id])
    @owner = User.find(@boat.user_id)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :number_of_people)
  end
end
