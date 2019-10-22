class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.integer :restaurant_id
      t.integer :user_id
      t.string :date
      t.string :time
      t.integer :guests

      t.timestamps
    end
  end
end
