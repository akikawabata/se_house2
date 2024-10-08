require "test_helper"

class Admin::SoundEffectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admin_sound_effects_index_url
    assert_response :success
  end

  test "should get new" do
    get admin_sound_effects_new_url
    assert_response :success
  end

  test "should get create" do
    get admin_sound_effects_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_sound_effects_show_url
    assert_response :success
  end

  test "should get edit" do
    get admin_sound_effects_edit_url
    assert_response :success
  end

  test "should get update" do
    get admin_sound_effects_update_url
    assert_response :success
  end

  test "should get destroy" do
    get admin_sound_effects_destroy_url
    assert_response :success
  end
end
