class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :dates
      t.string :status
      t.integer :price

      # Adding foreign keys in the table to have the user who rents the machine id and the machine's id.
      # Have renamed this column's name to make it easier to read and understand.
      # Not called user but renter for clarity.
      t.foreign_key :renter
      t.foreign_key :machine

      t.timestamps
    end
  end
end
