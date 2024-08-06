require "test_helper"

class Admin::MypageControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get admin_mypage_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_mypage_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_mypage_update_url
    assert_response :success
  end
end
