class CreateLocationProduct < ActiveRecord::Migration[5.1]
  def change
    create_table :location_products do |t|
      t.integer :location_id
      t.integer :product_id
    end
  end
end
