require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get users_index_url
    assert_response :success
  end

  test "should get users" do
    get users_users_url
    assert_response :success
  end

  test "should get post" do
    get users_post_url
    assert_response :success
  end

  test "should get comment" do
    get users_comment_url
    assert_response :success
  end

end
