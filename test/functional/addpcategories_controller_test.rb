require 'test_helper'

class AddpcategoriesControllerTest < ActionController::TestCase
  setup do
    @addpcategory = addpcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addpcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create addpcategory" do
    assert_difference('Addpcategory.count') do
      post :create, :addpcategory => @addpcategory.attributes
    end

    assert_redirected_to addpcategory_path(assigns(:addpcategory))
  end

  test "should show addpcategory" do
    get :show, :id => @addpcategory.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @addpcategory.to_param
    assert_response :success
  end

  test "should update addpcategory" do
    put :update, :id => @addpcategory.to_param, :addpcategory => @addpcategory.attributes
    assert_redirected_to addpcategory_path(assigns(:addpcategory))
  end

  test "should destroy addpcategory" do
    assert_difference('Addpcategory.count', -1) do
      delete :destroy, :id => @addpcategory.to_param
    end

    assert_redirected_to addpcategories_path
  end
end
