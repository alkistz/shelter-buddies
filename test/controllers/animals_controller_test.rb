require 'test_helper'

class AnimalsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get animals_index_url
    assert_response :success
  end

  test "should get show" do
    get animals_show_url
    assert_response :success
  end

  test "should get create" do
    get animals_create_url
    assert_response :success
  end

  test "should get new" do
    get animals_new_url
    assert_response :success
  end

  test "should get edit" do
    get animals_edit_url
    assert_response :success
  end

  test "should get update" do
    get animals_update_url
    assert_response :success
  end

  test "should get delete" do
    get animals_delete_url
    assert_response :success
  end

end
