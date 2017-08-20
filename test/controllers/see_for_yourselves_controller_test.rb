require 'test_helper'

class SeeForYourselvesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get see_for_yourselves_index_url
    assert_response :success
  end

  test "should get show" do
    get see_for_yourselves_show_url
    assert_response :success
  end

end
