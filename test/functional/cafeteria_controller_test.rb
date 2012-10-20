require 'test_helper'

class CafeteriaControllerTest < ActionController::TestCase
  setup do
    @cafeterium = cafeteria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafeteria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cafeterium" do
    assert_difference('Cafeterium.count') do
      post :create, cafeterium: { close_time: @cafeterium.close_time, location: @cafeterium.location, name: @cafeterium.name, open_time: @cafeterium.open_time }
    end

    assert_redirected_to cafeterium_path(assigns(:cafeterium))
  end

  test "should show cafeterium" do
    get :show, id: @cafeterium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cafeterium
    assert_response :success
  end

  test "should update cafeterium" do
    put :update, id: @cafeterium, cafeterium: { close_time: @cafeterium.close_time, location: @cafeterium.location, name: @cafeterium.name, open_time: @cafeterium.open_time }
    assert_redirected_to cafeterium_path(assigns(:cafeterium))
  end

  test "should destroy cafeterium" do
    assert_difference('Cafeterium.count', -1) do
      delete :destroy, id: @cafeterium
    end

    assert_redirected_to cafeteria_path
  end
end
