require 'test_helper'

class PessoaControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get pessoa_index_url
    assert_response :success
  end

end
