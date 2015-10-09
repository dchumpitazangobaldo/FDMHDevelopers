require 'test_helper'

class CrewControllerTest < ActionController::TestCase
  test "should get ourCrew" do
    get :ourCrew
    assert_response :success
  end

end
