require 'test_helper'

class FixinsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get fixins_index_url
    assert_response :success
  end

  test "should get new" do
    get fixins_new_url
    assert_response :success
  end

  test "should get create" do
    get fixins_create_url
    assert_response :success
  end

  test "should get show" do
    get fixins_show_url
    assert_response :success
  end

  test "should get edit" do
    get fixins_edit_url
    assert_response :success
  end

  test "should get update" do
    get fixins_update_url
    assert_response :success
  end

  test "should get destroy" do
    get fixins_destroy_url
    assert_response :success
  end

end
