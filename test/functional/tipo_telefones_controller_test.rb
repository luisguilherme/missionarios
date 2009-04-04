require 'test_helper'

class TipoTelefonesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_telefones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_telefone" do
    assert_difference('TipoTelefone.count') do
      post :create, :tipo_telefone => { }
    end

    assert_redirected_to tipo_telefone_path(assigns(:tipo_telefone))
  end

  test "should show tipo_telefone" do
    get :show, :id => tipo_telefones(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => tipo_telefones(:one).id
    assert_response :success
  end

  test "should update tipo_telefone" do
    put :update, :id => tipo_telefones(:one).id, :tipo_telefone => { }
    assert_redirected_to tipo_telefone_path(assigns(:tipo_telefone))
  end

  test "should destroy tipo_telefone" do
    assert_difference('TipoTelefone.count', -1) do
      delete :destroy, :id => tipo_telefones(:one).id
    end

    assert_redirected_to tipo_telefones_path
  end
end
