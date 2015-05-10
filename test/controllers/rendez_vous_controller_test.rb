require 'test_helper'

class RendezVousControllerTest < ActionController::TestCase
  setup do
    @rendez_vou = rendez_vous(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rendez_vous)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rendez_vou" do
    assert_difference('RendezVou.count') do
      post :create, rendez_vou: { beneficiaire_id: @rendez_vou.beneficiaire_id, date: @rendez_vou.date, employe_id: @rendez_vou.employe_id }
    end

    assert_redirected_to rendez_vou_path(assigns(:rendez_vou))
  end

  test "should show rendez_vou" do
    get :show, id: @rendez_vou
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rendez_vou
    assert_response :success
  end

  test "should update rendez_vou" do
    patch :update, id: @rendez_vou, rendez_vou: { beneficiaire_id: @rendez_vou.beneficiaire_id, date: @rendez_vou.date, employe_id: @rendez_vou.employe_id }
    assert_redirected_to rendez_vou_path(assigns(:rendez_vou))
  end

  test "should destroy rendez_vou" do
    assert_difference('RendezVou.count', -1) do
      delete :destroy, id: @rendez_vou
    end

    assert_redirected_to rendez_vous_path
  end
end
