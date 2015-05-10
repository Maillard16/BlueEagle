require 'test_helper'

class OrdinateursControllerTest < ActionController::TestCase
  setup do
    @ordinateur = ordinateurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ordinateurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ordinateur" do
    assert_difference('Ordinateur.count') do
      post :create, ordinateur: { beneficiaire_id: @ordinateur.beneficiaire_id, description: @ordinateur.description, entreprise_id: @ordinateur.entreprise_id, etat_ordinateur_id: @ordinateur.etat_ordinateur_id, numero: @ordinateur.numero }
    end

    assert_redirected_to ordinateur_path(assigns(:ordinateur))
  end

  test "should show ordinateur" do
    get :show, id: @ordinateur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ordinateur
    assert_response :success
  end

  test "should update ordinateur" do
    patch :update, id: @ordinateur, ordinateur: { beneficiaire_id: @ordinateur.beneficiaire_id, description: @ordinateur.description, entreprise_id: @ordinateur.entreprise_id, etat_ordinateur_id: @ordinateur.etat_ordinateur_id, numero: @ordinateur.numero }
    assert_redirected_to ordinateur_path(assigns(:ordinateur))
  end

  test "should destroy ordinateur" do
    assert_difference('Ordinateur.count', -1) do
      delete :destroy, id: @ordinateur
    end

    assert_redirected_to ordinateurs_path
  end
end
