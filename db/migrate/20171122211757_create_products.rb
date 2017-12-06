class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :item
      t.string :picture
      t.text :description
      t.string :packaging
      t.integer :rating
      t.text :location
      t.boolean :plastic_free
      t.timestamps
    end
  end
end
