class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :dates
      t.string :status
      t.integer :price

      t.timestamps
    end
  end
end
