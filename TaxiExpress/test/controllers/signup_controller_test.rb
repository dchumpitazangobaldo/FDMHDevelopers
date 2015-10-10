require 'test_helper'

class SignupControllerTest < ActionController::TestCase
  test "should get signUp" do
    get :signUp
    assert_response :success
  end

end
