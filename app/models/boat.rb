class Boat < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, :category, :capacity, :price, presence: true
  has_one_attached :photo
end
