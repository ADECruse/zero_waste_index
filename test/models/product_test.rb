require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = Product.new(item:"Peanuts", packaging: "Partial", location: "Example Address")
  end

  test "should be vaild" do
    assert @product.valid?
  end

  test "item should be present" do
   @product.item = ""
   assert_not @product.valid?
  end

  test "packaging should be present" do
   @product.packaging = ""
   assert_not @product.valid?
  end

  test "location should be present" do
   @product.location = ""
   assert_not @product.valid?
  end

  test "items should be unique" do
    duplicate_product = @product.dup
    duplicate_product.item = @product.item.upcase
    @product.save
    assert_not duplicate_product.valid?
  end
end
