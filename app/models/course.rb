class Course < ApplicationRecord
  has_many :start_date
  has_many :courses_reservation
  has_many :courses_user

  validates :title, presence: true
  validates :description, presence: true, length: { maximum: 500 }
end
