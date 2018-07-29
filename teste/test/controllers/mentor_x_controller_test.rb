require 'test_helper'

class MentorXControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mentor_x_index_url
    assert_response :success
  end

end
