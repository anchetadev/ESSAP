require 'test_helper'

class MentorsControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get mentors_login_url
    assert_response :success
  end

  test "should get create" do
    get mentors_create_url
    assert_response :success
  end

  test "should get edit" do
    get mentors_edit_url
    assert_response :success
  end

end
