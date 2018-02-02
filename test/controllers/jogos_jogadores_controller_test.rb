require 'test_helper'

class JogosJogadoresControllerTest < ActionController::TestCase
  setup do
    @jogos_jogador = jogos_jogadores(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jogos_jogadores)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jogos_jogador" do
    assert_difference('JogosJogador.count') do
      post :create, jogos_jogador: { cota: @jogos_jogador.cota, gol: @jogos_jogador.gol, jogador_id: @jogos_jogador.jogador_id, jogo_id: @jogos_jogador.jogo_id }
    end

    assert_redirected_to jogos_jogador_path(assigns(:jogos_jogador))
  end

  test "should show jogos_jogador" do
    get :show, id: @jogos_jogador
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jogos_jogador
    assert_response :success
  end

  test "should update jogos_jogador" do
    patch :update, id: @jogos_jogador, jogos_jogador: { cota: @jogos_jogador.cota, gol: @jogos_jogador.gol, jogador_id: @jogos_jogador.jogador_id, jogo_id: @jogos_jogador.jogo_id }
    assert_redirected_to jogos_jogador_path(assigns(:jogos_jogador))
  end

  test "should destroy jogos_jogador" do
    assert_difference('JogosJogador.count', -1) do
      delete :destroy, id: @jogos_jogador
    end

    assert_redirected_to jogos_jogadores_path
  end
end
