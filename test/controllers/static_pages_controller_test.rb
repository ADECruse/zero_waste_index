require 'test_helper'

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  def setup
    @base_title = "Zero Waste Index"
  end

  test "should get about" do
    get about_path
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

  test "should get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test "should get howto" do
    get howto_path
    assert_response :success
    assert_select "title", "How To | #{@base_title}"
  end

  test "should get ratings" do
    get ratings_path
    assert_response :success
    assert_select "title", "Ratings | #{@base_title}"
  end

end
