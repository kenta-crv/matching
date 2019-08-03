require 'test_helper'

class MypagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mypages_index_url
    assert_response :success
  end

  test "should get new" do
    get mypages_new_url
    assert_response :success
  end

  test "should get _form" do
    get mypages__form_url
    assert_response :success
  end

  test "should get show" do
    get mypages_show_url
    assert_response :success
  end

  test "should get edit" do
    get mypages_edit_url
    assert_response :success
  end

end
