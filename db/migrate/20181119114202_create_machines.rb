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

      t.timestamps
    end
  end
end
