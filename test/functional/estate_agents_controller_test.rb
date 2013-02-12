require 'test_helper'

class EstateAgentsControllerTest < ActionController::TestCase
  setup do
    @estate_agent = estate_agents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estate_agents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estate_agent" do
    assert_difference('EstateAgent.count') do
      post :create, estate_agent: {  }
    end

    assert_redirected_to estate_agent_path(assigns(:estate_agent))
  end

  test "should show estate_agent" do
    get :show, id: @estate_agent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estate_agent
    assert_response :success
  end

  test "should update estate_agent" do
    put :update, id: @estate_agent, estate_agent: {  }
    assert_redirected_to estate_agent_path(assigns(:estate_agent))
  end

  test "should destroy estate_agent" do
    assert_difference('EstateAgent.count', -1) do
      delete :destroy, id: @estate_agent
    end

    assert_redirected_to estate_agents_path
  end
end
