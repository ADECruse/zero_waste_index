class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.string :store
      t.string :latitude
      t.string :longitude
      t.timestamps
    end
  end
end
