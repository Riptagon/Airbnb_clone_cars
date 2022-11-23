require "test_helper"

class PeachControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get peach_new_url
    assert_response :success
  end
end
