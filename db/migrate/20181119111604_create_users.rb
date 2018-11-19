class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :open_id # unique id of user in WeChat. TBD later in lecture

      t.timestamps
    end
  end
end
