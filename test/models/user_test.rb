require "test_helper"

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "Example User", address: "Example address", age: "Example age")
  end

  test "should be valid" do
    assert @user.valid?
  end
  test "name should be present" do
    @user.name = "     "
    assert_not @user.valid?
  end
  test "address should be present" do
    @user.address = "     "
    assert_not @user.valid?
  end
end
