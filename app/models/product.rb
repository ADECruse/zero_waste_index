class Product < ApplicationRecord
  has_many :location_products
  has_many :locations, :through => :location_products
  mount_uploader :picture, PictureUploader
  validates :item,  presence: true, uniqueness: { case_sensitive: false }
  validates :packaging, presence: true
  validate  :picture_size


  def self.search(search)
    where("item ILIKE ?", "%#{search}%")
  end

  private

    # Validates the size of an uploaded picture.
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end

end
