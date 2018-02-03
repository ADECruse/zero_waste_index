class AddPlaceIdToLocations < ActiveRecord::Migration[5.1]
  def change
    add_column :locations, :place_id, :string
  end
end
