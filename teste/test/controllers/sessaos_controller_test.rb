require 'test_helper'

class SessaosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sessao = sessaos(:one)
  end

  test "should get index" do
    get sessaos_url
    assert_response :success
  end

  test "should get new" do
    get new_sessao_url
    assert_response :success
  end

  test "should create sessao" do
    assert_difference('Sessao.count') do
      post sessaos_url, params: { sessao: { habilidade: @sessao.habilidade, horario: @sessao.horario, mentor_id: @sessao.mentor_id, mentorado_id: @sessao.mentorado_id } }
    end

    assert_redirected_to sessao_url(Sessao.last)
  end

  test "should show sessao" do
    get sessao_url(@sessao)
    assert_response :success
  end

  test "should get edit" do
    get edit_sessao_url(@sessao)
    assert_response :success
  end

  test "should update sessao" do
    patch sessao_url(@sessao), params: { sessao: { habilidade: @sessao.habilidade, horario: @sessao.horario, mentor_id: @sessao.mentor_id, mentorado_id: @sessao.mentorado_id } }
    assert_redirected_to sessao_url(@sessao)
  end

  test "should destroy sessao" do
    assert_difference('Sessao.count', -1) do
      delete sessao_url(@sessao)
    end

    assert_redirected_to sessaos_url
  end
end
