require 'test_helper'

class CourseControllerTest < ActionController::TestCase
  test "should get scores" do
    get :scores
    assert_response :success
  end

end
