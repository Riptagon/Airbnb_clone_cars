class Car < ApplicationRecord
  has_many_attached :photos
  has_many :bookings, dependent: :delete_all
  belongs_to :user
  validates_presence_of :brand, :model, :color, :kilometers, :fuel_consumption, :price, :hp, :year, :description
end
