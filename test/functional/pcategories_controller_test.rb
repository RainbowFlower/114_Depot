require 'test_helper'

class PcategoriesControllerTest < ActionController::TestCase
  setup do
    @pcategory = pcategories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pcategories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pcategory" do
    assert_difference('Pcategory.count') do
      post :create, :pcategory => @pcategory.attributes
    end

    assert_redirected_to pcategory_path(assigns(:pcategory))
  end

  test "should show pcategory" do
    get :show, :id => @pcategory.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @pcategory.to_param
    assert_response :success
  end

  test "should update pcategory" do
    put :update, :id => @pcategory.to_param, :pcategory => @pcategory.attributes
    assert_redirected_to pcategory_path(assigns(:pcategory))
  end

  test "should destroy pcategory" do
    assert_difference('Pcategory.count', -1) do
      delete :destroy, :id => @pcategory.to_param
    end

    assert_redirected_to pcategories_path
  end
end
