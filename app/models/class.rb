class Class < ApplicationRecord
  has_many :start_date
  has_many :classes_reservation
  has_many :classes_user

  validates :title, presence: true
  validates :description, presence: true, length: { maximum: 500 }
end
