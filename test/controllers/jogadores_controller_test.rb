require 'test_helper'

class JogadoresControllerTest < ActionController::TestCase
  setup do
    @jogador = jogadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jogadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jogador" do
    assert_difference('Jogador.count') do
      post :create, jogador: { ativo: @jogador.ativo, nome: @jogador.nome }
    end

    assert_redirected_to jogador_path(assigns(:jogador))
  end

  test "should show jogador" do
    get :show, id: @jogador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jogador
    assert_response :success
  end

  test "should update jogador" do
    patch :update, id: @jogador, jogador: { ativo: @jogador.ativo, nome: @jogador.nome }
    assert_redirected_to jogador_path(assigns(:jogador))
  end

  test "should destroy jogador" do
    assert_difference('Jogador.count', -1) do
      delete :destroy, id: @jogador
    end

    assert_redirected_to jogadores_path
  end
end
