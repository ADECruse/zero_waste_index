class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :item
      t.string :packaging
      t.text :location

      t.timestamps
    end
  end
end
