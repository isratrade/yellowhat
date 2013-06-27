require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { avatar: @user.avatar, birthday: @user.birthday, description: @user.description, desk_number: @user.desk_number, email: @user.email, first_name: @user.first_name, floor_level: @user.floor_level, home_phone: @user.home_phone, irc_name: @user.irc_name, last_name: @user.last_name, mobile_phone: @user.mobile_phone, title: @user.title, work_phone: @user.work_phone }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    put :update, id: @user, user: { avatar: @user.avatar, birthday: @user.birthday, description: @user.description, desk_number: @user.desk_number, email: @user.email, first_name: @user.first_name, floor_level: @user.floor_level, home_phone: @user.home_phone, irc_name: @user.irc_name, last_name: @user.last_name, mobile_phone: @user.mobile_phone, title: @user.title, work_phone: @user.work_phone }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
