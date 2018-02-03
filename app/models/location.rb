class Location < ApplicationRecord
  has_many :location_products
  has_many :products, :through => :location_products

  # Method that allows the selection of the location association in the product form
  def self.select
    Location.order("store").map { |l| [l.store, l.id] }
  end

  def self.check_box
    Location.order("store").map { |l| [l.store, l.id] }
  end
end
