require "test_helper"

class HomyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homy_index_url
    assert_response :success
  end
end
