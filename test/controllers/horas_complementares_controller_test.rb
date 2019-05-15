require 'test_helper'

class HorasComplementaresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get horas_complementares_index_url
    assert_response :success
  end

end
