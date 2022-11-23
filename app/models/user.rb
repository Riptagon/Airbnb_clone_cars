class User < ApplicationRecord
  has_many :bookings
  has_many :cars, through: :bookings
  has_many :property

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates_presence_of :username, :email, :password
  validates :password, length: { in: 6..20 }
  validates :username, uniqueness: true
  validates :email, uniqueness: true, format: { with: /\A\S+@.+\.\S+\z/, message: "only allows letters" }
end
