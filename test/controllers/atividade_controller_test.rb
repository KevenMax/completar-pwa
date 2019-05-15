require 'test_helper'

class AtividadeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get atividade_index_url
    assert_response :success
  end

end
