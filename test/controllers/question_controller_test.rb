require "test_helper"

class QuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get question_new_url
    assert_response :success
  end
end
