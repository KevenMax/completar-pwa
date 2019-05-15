require 'test_helper'

class CursoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get curso_index_url
    assert_response :success
  end

end
