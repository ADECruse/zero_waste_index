class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :item
      t.string :packaging
      t.text :location
      t.text :description
      t.text :picture
      t.integer :rating
      t.boolean :plastic_free
      t.timestamps
    end
  end
end
