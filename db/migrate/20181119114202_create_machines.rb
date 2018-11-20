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
      # If we want to change the name in references, then you need additional lines to make it explicit to Rails.
      # Convention over configuration. It cannot know if you change the convention what to look for.
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
