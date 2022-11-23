class User < ApplicationRecord
  has_many :bookings
  has_many :cars, through: :bookings
  has_many :property

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
