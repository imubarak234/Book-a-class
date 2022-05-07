class ClassesReservation < ApplicationRecord

  belongs_to :reservation
  belongs_to :class
end