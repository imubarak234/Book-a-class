class Reservation < ApplicationRecord
  belongs_to :user
  has_many :classes_reservation
end
