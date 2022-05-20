class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat
  validates :boat_id, presence: true
  validates :user_id, presence: true
end
