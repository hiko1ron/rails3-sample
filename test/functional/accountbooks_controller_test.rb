require 'test_helper'

class AccountbooksControllerTest < ActionController::TestCase
  test "should get newtest" do
    get :newtest
    assert_response :success
  end

end
