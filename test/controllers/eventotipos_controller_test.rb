require 'test_helper'

class EventotiposControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get eventotipos_index_url
    assert_response :success
  end

  test "should get new" do
    get eventotipos_new_url
    assert_response :success
  end

  test "should get show" do
    get eventotipos_show_url
    assert_response :success
  end

  test "should get edit" do
    get eventotipos_edit_url
    assert_response :success
  end

end
