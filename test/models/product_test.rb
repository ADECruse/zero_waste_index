require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = Product.new(item:"Example",picture:"example.jpg",description: "Example description",packaging: "Example packet",rating:1,plastic_free: true)
  end

  test "should be vaild" do
    assert @product.valid?
  end

  test "item should be present" do
   @product.item = ""
   assert_not @product.valid?
  end

  test "description should be present" do
   @product.description = ""
   assert_not @product.valid?
  end

  test "packaging should be present" do
   @product.packaging = ""
   assert_not @product.valid?
  end

  test "rating should be present" do
   @product.rating = 1..5
   assert_not @product.valid?
  end

  test "plastic_free should be present" do
   @product.plastic_free = true
   assert_not @product.valid?
  end

  test "items should be unique" do
    duplicate_product = @product.dup
    duplicate_product.item = @product.item.upcase
    @product.save
    assert_not duplicate_product.valid?
  end
end
