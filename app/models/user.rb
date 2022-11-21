class User < ApplicationRecord
  has_many :bookings
  has_many :cars, through: :bookings
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
