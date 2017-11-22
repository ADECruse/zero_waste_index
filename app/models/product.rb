class Product < ApplicationRecord
  validates :item,  presence: true, uniqueness: { case_sensitive: false }
  validates :packaging, presence: true
  validates :location,  presence: true

end
