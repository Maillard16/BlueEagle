require 'test_helper'

class EmployeGereOrdinateursControllerTest < ActionController::TestCase
  setup do
    @employe_gere_ordinateur = employe_gere_ordinateurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employe_gere_ordinateurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employe_gere_ordinateur" do
    assert_difference('EmployeGereOrdinateur.count') do
      post :create, employe_gere_ordinateur: { date: @employe_gere_ordinateur.date, employe_id: @employe_gere_ordinateur.employe_id, etat_ordinateur_acquis_id: @employe_gere_ordinateur.etat_ordinateur_acquis_id, etat_ordinateur_preced_id: @employe_gere_ordinateur.etat_ordinateur_preced_id, ordinateur_id: @employe_gere_ordinateur.ordinateur_id }
    end

    assert_redirected_to employe_gere_ordinateur_path(assigns(:employe_gere_ordinateur))
  end

  test "should show employe_gere_ordinateur" do
    get :show, id: @employe_gere_ordinateur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employe_gere_ordinateur
    assert_response :success
  end

  test "should update employe_gere_ordinateur" do
    patch :update, id: @employe_gere_ordinateur, employe_gere_ordinateur: { date: @employe_gere_ordinateur.date, employe_id: @employe_gere_ordinateur.employe_id, etat_ordinateur_acquis_id: @employe_gere_ordinateur.etat_ordinateur_acquis_id, etat_ordinateur_preced_id: @employe_gere_ordinateur.etat_ordinateur_preced_id, ordinateur_id: @employe_gere_ordinateur.ordinateur_id }
    assert_redirected_to employe_gere_ordinateur_path(assigns(:employe_gere_ordinateur))
  end

  test "should destroy employe_gere_ordinateur" do
    assert_difference('EmployeGereOrdinateur.count', -1) do
      delete :destroy, id: @employe_gere_ordinateur
    end

    assert_redirected_to employe_gere_ordinateurs_path
  end
end
