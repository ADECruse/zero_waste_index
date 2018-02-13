class Product < ApplicationRecord
  has_many :location_products
  has_many :locations, :through => :location_products

  validates :item,  presence: true, uniqueness: { case_sensitive: false }
  validates :packaging, presence: true


  def self.search(search)
  where("item LIKE ?", "%#{search}%")
  end

end
