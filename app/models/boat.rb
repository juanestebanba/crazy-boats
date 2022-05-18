class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validate :name, :category, :capacity, :price, presence: true
end
