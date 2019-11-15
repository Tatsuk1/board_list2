require 'test_helper'

class Thread1sControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get thread1s_index_url
    assert_response :success
  end

  test "should get show" do
    get thread1s_show_url
    assert_response :success
  end

  test "should get new" do
    get thread1s_new_url
    assert_response :success
  end

  test "should get edit" do
    get thread1s_edit_url
    assert_response :success
  end

end
