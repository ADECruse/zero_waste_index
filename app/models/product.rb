class Product < ApplicationRecord
  validates :item,  presence: true, uniqueness: { case_sensitive: false }
  validates :packaging, presence: true
  validates :location,  presence: true

  has_many :taggings
  has_many :tags, through: :taggings

  def self.search(search)
    if Tag.find_by(name: search).products.exists?
      Tag.find_by(name: search).products
    else
      where("item LIKE ?", "%#{search}%")
    end
  end

  def self.tagged_with(name)
    if Tag.find_by!(name: name).products.exists?
      Tag.find_by!(name: name).products
    else
      where("item LIKE ?", "%#{name}%")
    end
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end
end
