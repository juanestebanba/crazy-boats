class CategoriesController < ApplicationController
  def fishingboats
    @boats = Boat.where(category: "fishing_boat")
  end

  def yachts
    @boats = Boat.where(category: "yachts")
  end

  def sportsboat
    @boats = Boat.where(category: "sports_boat")
  end
end
