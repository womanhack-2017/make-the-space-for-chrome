require 'test_helper'

class DevelopControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get develop_index_url
    assert_response :success
  end

  test "should get show" do
    get develop_show_url
    assert_response :success
  end

end
