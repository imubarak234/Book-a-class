class CourseReservation < ApplicationRecord
  belongs_to :reservation
  belongs_to :class
end
