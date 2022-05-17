class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bike, null: false, foreign_key: true
      t.date :booking_start
      t.date :booking_end
      t.integer :total_price
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
