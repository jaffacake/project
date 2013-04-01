require 'test_helper'

class PropertyStylesControllerTest < ActionController::TestCase
  setup do
    @property_style = property_styles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:property_styles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create property_style" do
    assert_difference('PropertyStyle.count') do
      post :create, property_style: {  }
    end

    assert_redirected_to property_style_path(assigns(:property_style))
  end

  test "should show property_style" do
    get :show, id: @property_style
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @property_style
    assert_response :success
  end

  test "should update property_style" do
    put :update, id: @property_style, property_style: {  }
    assert_redirected_to property_style_path(assigns(:property_style))
  end

  test "should destroy property_style" do
    assert_difference('PropertyStyle.count', -1) do
      delete :destroy, id: @property_style
    end

    assert_redirected_to property_styles_path
  end
end
