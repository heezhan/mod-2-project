class AddLocationIdToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :location_id, :integer
  end
end
