require 'test_helper'

class BeneficiairesControllerTest < ActionController::TestCase
  setup do
    @beneficiaire = beneficiaires(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:beneficiaires)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create beneficiaire" do
    assert_difference('Beneficiaire.count') do
      post :create, beneficiaire: { adresse: @beneficiaire.adresse, nom: @beneficiaire.nom, organisme_id: @beneficiaire.organisme_id, prenom: @beneficiaire.prenom, priorite_beneficiaire_id: @beneficiaire.priorite_beneficiaire_id, telephone: @beneficiaire.telephone }
    end

    assert_redirected_to beneficiaire_path(assigns(:beneficiaire))
  end

  test "should show beneficiaire" do
    get :show, id: @beneficiaire
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @beneficiaire
    assert_response :success
  end

  test "should update beneficiaire" do
    patch :update, id: @beneficiaire, beneficiaire: { adresse: @beneficiaire.adresse, nom: @beneficiaire.nom, organisme_id: @beneficiaire.organisme_id, prenom: @beneficiaire.prenom, priorite_beneficiaire_id: @beneficiaire.priorite_beneficiaire_id, telephone: @beneficiaire.telephone }
    assert_redirected_to beneficiaire_path(assigns(:beneficiaire))
  end

  test "should destroy beneficiaire" do
    assert_difference('Beneficiaire.count', -1) do
      delete :destroy, id: @beneficiaire
    end

    assert_redirected_to beneficiaires_path
  end
end
