class Class < ApplicationRecord
  has_many :start_date
  has_many :classes_reservation
  has_many :classes_user
end