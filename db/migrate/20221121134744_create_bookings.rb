class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.date :created_at
      t.date :start_of_booking
      t.date :end_of_booking
      t.references :user, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
    end
  end
end
