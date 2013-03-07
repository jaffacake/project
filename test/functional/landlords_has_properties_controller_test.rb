require 'test_helper'

class LandlordsHasPropertiesControllerTest < ActionController::TestCase
  setup do
    @landlords_has_property = landlords_has_properties(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:landlords_has_properties)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create landlords_has_property" do
    assert_difference('LandlordsHasProperty.count') do
      post :create, landlords_has_property: {  }
    end

    assert_redirected_to landlords_has_property_path(assigns(:landlords_has_property))
  end

  test "should show landlords_has_property" do
    get :show, id: @landlords_has_property
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @landlords_has_property
    assert_response :success
  end

  test "should update landlords_has_property" do
    put :update, id: @landlords_has_property, landlords_has_property: {  }
    assert_redirected_to landlords_has_property_path(assigns(:landlords_has_property))
  end

  test "should destroy landlords_has_property" do
    assert_difference('LandlordsHasProperty.count', -1) do
      delete :destroy, id: @landlords_has_property
    end

    assert_redirected_to landlords_has_properties_path
  end
end
