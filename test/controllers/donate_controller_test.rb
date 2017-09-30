require 'test_helper'

class DonateControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get donate_index_url
    assert_response :success
  end

  test "should get show" do
    get donate_show_url
    assert_response :success
  end

end
