class Reservation < ApplicationRecord
  belongs_to :user
  has_many :courses_reservation
end
