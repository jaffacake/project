require 'test_helper'

class TenancyAgreementsControllerTest < ActionController::TestCase
  setup do
    @tenancy_agreement = tenancy_agreements(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tenancy_agreements)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tenancy_agreement" do
    assert_difference('TenancyAgreement.count') do
      post :create, tenancy_agreement: {  }
    end

    assert_redirected_to tenancy_agreement_path(assigns(:tenancy_agreement))
  end

  test "should show tenancy_agreement" do
    get :show, id: @tenancy_agreement
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tenancy_agreement
    assert_response :success
  end

  test "should update tenancy_agreement" do
    put :update, id: @tenancy_agreement, tenancy_agreement: {  }
    assert_redirected_to tenancy_agreement_path(assigns(:tenancy_agreement))
  end

  test "should destroy tenancy_agreement" do
    assert_difference('TenancyAgreement.count', -1) do
      delete :destroy, id: @tenancy_agreement
    end

    assert_redirected_to tenancy_agreements_path
  end
end
