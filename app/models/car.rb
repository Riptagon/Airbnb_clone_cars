class Car < ApplicationRecord
  has_many_attached :photos
  has_many :bookings
  has_one :user, through: :property
  validates_presence_of :brand, :model, :color, :kilometers, :fuel_consumption, :price, :hp, :year, :description
end
