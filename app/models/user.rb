class User < ApplicationRecord

  has_many :classes_user
  has_many :reservation

  validates :full_name, presence: true
end