class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.integer :price
      t.string :category
      t.integer :phone_number
      t.string :website_url
      t.string :hours_of_operation

      t.timestamps
    end
  end
end
