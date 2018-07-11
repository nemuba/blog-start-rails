require 'test_helper'

class BlogControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get blog_index_url
    assert_response :success
  end

  test "should get about" do
    get blog_about_url
    assert_response :success
  end

  test "should get contact" do
    get blog_contact_url
    assert_response :success
  end

end
