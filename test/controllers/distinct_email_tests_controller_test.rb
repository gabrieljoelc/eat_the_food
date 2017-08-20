require 'test_helper'

class DistinctEmailTestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get distinct_email_tests_index_url
    assert_response :success
  end

end
