class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!
  def fishing_boats
    @boats = Boat.where(category: "Fishing")
  end

  def yachts
    @boats = Boat.where(category: "Yacht")
  end

  def party_boats
    @boats = Boat.where(category: "Party")
  end
end
