require 'test_helper'

class CcategoriesControllerTest < ActionController::TestCase
  setup do
    @ccategory = ccategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ccategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ccategory" do
    assert_difference('Ccategory.count') do
      post :create, :ccategory => @ccategory.attributes
    end

    assert_redirected_to ccategory_path(assigns(:ccategory))
  end

  test "should show ccategory" do
    get :show, :id => @ccategory.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @ccategory.to_param
    assert_response :success
  end

  test "should update ccategory" do
    put :update, :id => @ccategory.to_param, :ccategory => @ccategory.attributes
    assert_redirected_to ccategory_path(assigns(:ccategory))
  end

  test "should destroy ccategory" do
    assert_difference('Ccategory.count', -1) do
      delete :destroy, :id => @ccategory.to_param
    end

    assert_redirected_to ccategories_path
  end
end
