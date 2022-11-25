class Car < ApplicationRecord
  include PgSearch::Model
  has_many_attached :photos
  has_many :bookings, dependent: :delete_all
  belongs_to :user

  validates_presence_of :brand, :model, :color, :kilometers, :fuel_consumption, :price, :hp, :year, :description

  pg_search_scope :search_by_info, against: %i[brand model], associated_against: { user: %i[username email] },
  using: { tsearch: { prefix: true } }
end
