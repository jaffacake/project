require 'test_helper'

class PlaceOfWorksControllerTest < ActionController::TestCase
  setup do
    @place_of_work = place_of_works(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:place_of_works)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create place_of_work" do
    assert_difference('PlaceOfWork.count') do
      post :create, place_of_work: {  }
    end

    assert_redirected_to place_of_work_path(assigns(:place_of_work))
  end

  test "should show place_of_work" do
    get :show, id: @place_of_work
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @place_of_work
    assert_response :success
  end

  test "should update place_of_work" do
    put :update, id: @place_of_work, place_of_work: {  }
    assert_redirected_to place_of_work_path(assigns(:place_of_work))
  end

  test "should destroy place_of_work" do
    assert_difference('PlaceOfWork.count', -1) do
      delete :destroy, id: @place_of_work
    end

    assert_redirected_to place_of_works_path
  end
end
