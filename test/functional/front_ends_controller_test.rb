require 'test_helper'

class FrontEndsControllerTest < ActionController::TestCase
  setup do
    @front_end = front_ends(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:front_ends)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create front_end" do
    assert_difference('FrontEnd.count') do
      post :create, front_end: {  }
    end

    assert_redirected_to front_end_path(assigns(:front_end))
  end

  test "should show front_end" do
    get :show, id: @front_end
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @front_end
    assert_response :success
  end

  test "should update front_end" do
    put :update, id: @front_end, front_end: {  }
    assert_redirected_to front_end_path(assigns(:front_end))
  end

  test "should destroy front_end" do
    assert_difference('FrontEnd.count', -1) do
      delete :destroy, id: @front_end
    end

    assert_redirected_to front_ends_path
  end
end
