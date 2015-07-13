require 'test_helper'

class DdControllerTest < ActionController::TestCase
  test "should get ee" do
    get :ee
    assert_response :success
  end

end
