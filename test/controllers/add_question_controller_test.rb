require "test_helper"

class AddQuestionControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get add_question_new_url
    assert_response :success
  end
end
