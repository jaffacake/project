require 'test_helper'

class EstateAgentBrowsesControllerTest < ActionController::TestCase
  setup do
    @estate_agent_browse = estate_agent_browses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estate_agent_browses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estate_agent_browse" do
    assert_difference('EstateAgentBrowse.count') do
      post :create, estate_agent_browse: {  }
    end

    assert_redirected_to estate_agent_browse_path(assigns(:estate_agent_browse))
  end

  test "should show estate_agent_browse" do
    get :show, id: @estate_agent_browse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estate_agent_browse
    assert_response :success
  end

  test "should update estate_agent_browse" do
    put :update, id: @estate_agent_browse, estate_agent_browse: {  }
    assert_redirected_to estate_agent_browse_path(assigns(:estate_agent_browse))
  end

  test "should destroy estate_agent_browse" do
    assert_difference('EstateAgentBrowse.count', -1) do
      delete :destroy, id: @estate_agent_browse
    end

    assert_redirected_to estate_agent_browses_path
  end
end
