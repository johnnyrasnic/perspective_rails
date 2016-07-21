require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(email: "test@example.com", username: "test", name: "Foobar")
  end

  # Email

  test "should not be valid when email not present" do
    @user.email = ""
    @user.save
    assert_not @user.valid?
  end

  # Password

  test "should not be valid without password" do
    @user.save
    assert_not @user.valid?
  end

  test "should not accept too short password" do
    @user.password = "short"
    @user.password_confirmation = "short"
    @user.save
    assert_not @user.valid?
  end

  test "should not be valid when password does not match confirmation" do
    @user.password = "foobar"
    @user.password_confirmation = "aaaaaa"
    @user.save
    assert_not @user.valid?
  end

  test "should accept user" do
    @user.password = "foobar"
    @user.password_confirmation = "foobar"
    @user.save
    assert @user.valid?
  end
end
