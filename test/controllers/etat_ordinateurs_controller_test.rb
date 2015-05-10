require 'test_helper'

class EtatOrdinateursControllerTest < ActionController::TestCase
  setup do
    @etat_ordinateur = etat_ordinateurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:etat_ordinateurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create etat_ordinateur" do
    assert_difference('EtatOrdinateur.count') do
      post :create, etat_ordinateur: { description: @etat_ordinateur.description }
    end

    assert_redirected_to etat_ordinateur_path(assigns(:etat_ordinateur))
  end

  test "should show etat_ordinateur" do
    get :show, id: @etat_ordinateur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @etat_ordinateur
    assert_response :success
  end

  test "should update etat_ordinateur" do
    patch :update, id: @etat_ordinateur, etat_ordinateur: { description: @etat_ordinateur.description }
    assert_redirected_to etat_ordinateur_path(assigns(:etat_ordinateur))
  end

  test "should destroy etat_ordinateur" do
    assert_difference('EtatOrdinateur.count', -1) do
      delete :destroy, id: @etat_ordinateur
    end

    assert_redirected_to etat_ordinateurs_path
  end
end
