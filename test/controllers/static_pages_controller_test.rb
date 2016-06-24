require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "get home" do
    get :home
    assert_response :success
  end

  test "get about" do
    get :about
    assert_response :success
  end
end
