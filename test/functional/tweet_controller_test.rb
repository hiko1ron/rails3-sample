require 'test_helper'

class TweetControllerTest < ActionController::TestCase
  test "should get add" do
    get :add
    assert_response :success
  end

end
