require 'test_helper'

class FilaMentorandosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fila_mentorando = fila_mentorandos(:one)
  end

  test "should get index" do
    get fila_mentorandos_url
    assert_response :success
  end

  test "should get new" do
    get new_fila_mentorando_url
    assert_response :success
  end

  test "should create fila_mentorando" do
    assert_difference('FilaMentorando.count') do
      post fila_mentorandos_url, params: { fila_mentorando: { habilidade: @fila_mentorando.habilidade, mentorando_id: @fila_mentorando.mentorando_id } }
    end

    assert_redirected_to fila_mentorando_url(FilaMentorando.last)
  end

  test "should show fila_mentorando" do
    get fila_mentorando_url(@fila_mentorando)
    assert_response :success
  end

  test "should get edit" do
    get edit_fila_mentorando_url(@fila_mentorando)
    assert_response :success
  end

  test "should update fila_mentorando" do
    patch fila_mentorando_url(@fila_mentorando), params: { fila_mentorando: { habilidade: @fila_mentorando.habilidade, mentorando_id: @fila_mentorando.mentorando_id } }
    assert_redirected_to fila_mentorando_url(@fila_mentorando)
  end

  test "should destroy fila_mentorando" do
    assert_difference('FilaMentorando.count', -1) do
      delete fila_mentorando_url(@fila_mentorando)
    end

    assert_redirected_to fila_mentorandos_url
  end
end
