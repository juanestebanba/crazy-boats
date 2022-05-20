class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, presence: true
  validates :category, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
end
