class RemoveLocationFromProducts < ActiveRecord::Migration[5.1]
  def change
    remove_column :products, :location, :text
  end
end
