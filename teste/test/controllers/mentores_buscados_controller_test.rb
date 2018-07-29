require 'test_helper'

class MentoresBuscadosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mentores_buscados_index_url
    assert_response :success
  end

end
