require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  test "should get signup" do
    get :new
    assert_response :success
  end
end
