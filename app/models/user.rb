class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable,
  #        :jwt_authenticatable, authentication_keys: [:login],
  #                              jwt_revocation_strategy: JwtDenylist
  has_many :classes_user
  has_many :reservation

  #validates :full_name, presence: true
  validates :username, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :username, with: /^[a-zA-Z0-9_.]*$/, multiline: true

  has_secure_password
  #validate :validate_username

  # attr_writer :login

  # def login
  #   @login || username || email
  # end

  # def validate_username
  #   errors.add(:username, :invalid) if User.where(email: username).exists?
  # end

  # # app/models/user.rb

  # def self.find_for_database_authentication(warden_conditions)
  #   conditions = warden_conditions.dup
  #   if (login = conditions.delete(:login))
  #     where(conditions.to_h).where(['lower(username) = :value OR lower(email) = :value',
  #                                   { value: login.downcase }]).first
  #   elsif conditions.key?(:username) || conditions.key?(:email)
  #     where(conditions.to_h).first
  #   end
  # end
end
