class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:jwt_authenticatable,
         jwt_revocation_strategy: JwtDenylist
  has_many :classes_user
  has_many :reservation

  validates :full_name, presence: true
end
