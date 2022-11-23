class Car < ApplicationRecord
  has_one_attached :photo
  has_many :bookings
  has_one :user, through: :property
  validates_presence_of :brand, :model, :color, :kilometers, :fuel_consumption, :price, :hp, :year, :description
end
