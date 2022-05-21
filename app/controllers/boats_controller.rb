class BoatsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @boats = Boat.all
  end

  def show
    set_boat
  end

  def new
    @boat = Boat.new
  end

  def create
    @boat = Boat.new(boat_params)
    @boat.user = current_user
    if @boat.save!
      redirect_to boat_path(@boat)
    else
      render :new
    end
  end

  private

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :category, :capacity, :price, :user_id)
  end
end
