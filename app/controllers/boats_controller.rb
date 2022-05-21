class BoatsController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @boats = Boat.all
  end

  def show
    set_boat
  end

  # def new
  #   find_user
  #   @boat = Boat.new
  # end

  # def create
  #   find_user
  #   @boat = Boat.new(boat_params)
  #   @boat.user = @user
  #   if @boat.save
  #     redirect_to boat_path(@boat)
  #   else
  #     render :new
  #   end
  # end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def set_boat
    @boat = Boat.find(params[:id])
  end

  def boat_params
    params.require(:boat).permit(:name, :cateogry, :capacity, :price, :user_id)
  end
end
