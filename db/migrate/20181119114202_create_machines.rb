class CreateMachines < ActiveRecord::Migration[5.2]
  def change
    create_table :machines do |t|
      t.string :name
      t.string :brand
      t.integer :sock_count
      t.text :description
      t.string :type
      t.text :location
      t.integer :availability
      t.integer :price
      t.string :photo

      # Adding a foreign key in a column to have the machine's owner (user) id.
      # Have renamed this column's name to make it easier to read and understand.
      # Not called user but owner for clarity.
      t.foreign_key :owner

      t.timestamps
    end
  end
end
