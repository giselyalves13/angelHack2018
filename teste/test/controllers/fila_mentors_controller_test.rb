require 'test_helper'

class FilaMentorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fila_mentor = fila_mentors(:one)
  end

  test "should get index" do
    get fila_mentors_url
    assert_response :success
  end

  test "should get new" do
    get new_fila_mentor_url
    assert_response :success
  end

  test "should create fila_mentor" do
    assert_difference('FilaMentor.count') do
      post fila_mentors_url, params: { fila_mentor: { habilidade: @fila_mentor.habilidade, mentor_id: @fila_mentor.mentor_id } }
    end

    assert_redirected_to fila_mentor_url(FilaMentor.last)
  end

  test "should show fila_mentor" do
    get fila_mentor_url(@fila_mentor)
    assert_response :success
  end

  test "should get edit" do
    get edit_fila_mentor_url(@fila_mentor)
    assert_response :success
  end

  test "should update fila_mentor" do
    patch fila_mentor_url(@fila_mentor), params: { fila_mentor: { habilidade: @fila_mentor.habilidade, mentor_id: @fila_mentor.mentor_id } }
    assert_redirected_to fila_mentor_url(@fila_mentor)
  end

  test "should destroy fila_mentor" do
    assert_difference('FilaMentor.count', -1) do
      delete fila_mentor_url(@fila_mentor)
    end

    assert_redirected_to fila_mentors_url
  end
end
