class Product < ApplicationRecord
  has_many :location_products
  has_many :locations, :through => :location_products
  mount_uploader :picture, PictureUploader
  validates :item,  presence: true, uniqueness: { case_sensitive: false }
  validates :packaging, presence: true


  def self.search(search)
  where("item ILIKE ?", "%#{search}%")
  end

end
