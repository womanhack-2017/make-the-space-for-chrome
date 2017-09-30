require 'test_helper'

class ThinkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get think_index_url
    assert_response :success
  end

  test "should get show" do
    get think_show_url
    assert_response :success
  end

end
