require 'test_helper'

class OrganismesControllerTest < ActionController::TestCase
  setup do
    @organisme = organismes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:organismes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create organisme" do
    assert_difference('Organisme.count') do
      post :create, organisme: { adresse: @organisme.adresse, nom: @organisme.nom, telephone: @organisme.telephone, user_id: @organisme.user_id }
    end

    assert_redirected_to organisme_path(assigns(:organisme))
  end

  test "should show organisme" do
    get :show, id: @organisme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @organisme
    assert_response :success
  end

  test "should update organisme" do
    patch :update, id: @organisme, organisme: { adresse: @organisme.adresse, nom: @organisme.nom, telephone: @organisme.telephone, user_id: @organisme.user_id }
    assert_redirected_to organisme_path(assigns(:organisme))
  end

  test "should destroy organisme" do
    assert_difference('Organisme.count', -1) do
      delete :destroy, id: @organisme
    end

    assert_redirected_to organismes_path
  end
end
