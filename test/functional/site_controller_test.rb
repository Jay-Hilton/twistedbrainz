require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get about" do
    get :about
    assert_response :success
  end

  test "should get downloads" do
    get :downloads
    assert_response :success
  end

  test "should get video" do
    get :video
    assert_response :success
  end

end
