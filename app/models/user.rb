class User < ApplicationRecord

  has_many :classes_user
  has_many :reservation
end