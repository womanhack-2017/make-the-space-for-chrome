require 'test_helper'

class EvolveControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get evolve_index_url
    assert_response :success
  end

  test "should get show" do
    get evolve_show_url
    assert_response :success
  end

end
