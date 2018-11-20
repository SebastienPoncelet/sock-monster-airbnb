class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.date :dates
      t.string :status
      t.integer :price

      # Adding foreign keys in the table to have the user who rents the machine id and the machine's id.
      t.references :user, foreign_key: true
      t.references :machine, foreign_key: true

      # If we want to change the name in references, then you need additional lines to make it explicit to Rails.
      # Convention over configuration. It cannot know if you change the convention what to look for.
      t.timestamps
    end
  end
end
