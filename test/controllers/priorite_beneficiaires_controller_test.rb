require 'test_helper'

class PrioriteBeneficiairesControllerTest < ActionController::TestCase
  setup do
    @priorite_beneficiaire = priorite_beneficiaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:priorite_beneficiaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create priorite_beneficiaire" do
    assert_difference('PrioriteBeneficiaire.count') do
      post :create, priorite_beneficiaire: { description: @priorite_beneficiaire.description }
    end

    assert_redirected_to priorite_beneficiaire_path(assigns(:priorite_beneficiaire))
  end

  test "should show priorite_beneficiaire" do
    get :show, id: @priorite_beneficiaire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @priorite_beneficiaire
    assert_response :success
  end

  test "should update priorite_beneficiaire" do
    patch :update, id: @priorite_beneficiaire, priorite_beneficiaire: { description: @priorite_beneficiaire.description }
    assert_redirected_to priorite_beneficiaire_path(assigns(:priorite_beneficiaire))
  end

  test "should destroy priorite_beneficiaire" do
    assert_difference('PrioriteBeneficiaire.count', -1) do
      delete :destroy, id: @priorite_beneficiaire
    end

    assert_redirected_to priorite_beneficiaires_path
  end
end
