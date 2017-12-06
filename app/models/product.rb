class Product < ApplicationRecord
  validates :item,  presence: true, uniqueness: { case_sensitive: false }
  validates :packaging, presence: true
  validates :location,  presence: true

  def self.search(search)
  where("item ILIKE ?", "%#{search}%")
  end

end
