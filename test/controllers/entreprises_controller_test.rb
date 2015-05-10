require 'test_helper'

class EntreprisesControllerTest < ActionController::TestCase
  setup do
    @entreprise = entreprises(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entreprises)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entreprise" do
    assert_difference('Entreprise.count') do
      post :create, entreprise: { adresse: @entreprise.adresse, nom: @entreprise.nom, telephone: @entreprise.telephone, user_id: @entreprise.user_id }
    end

    assert_redirected_to entreprise_path(assigns(:entreprise))
  end

  test "should show entreprise" do
    get :show, id: @entreprise
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entreprise
    assert_response :success
  end

  test "should update entreprise" do
    patch :update, id: @entreprise, entreprise: { adresse: @entreprise.adresse, nom: @entreprise.nom, telephone: @entreprise.telephone, user_id: @entreprise.user_id }
    assert_redirected_to entreprise_path(assigns(:entreprise))
  end

  test "should destroy entreprise" do
    assert_difference('Entreprise.count', -1) do
      delete :destroy, id: @entreprise
    end

    assert_redirected_to entreprises_path
  end
end
