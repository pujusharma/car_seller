require "test_helper"

class CarsectionControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carsection_index_url
    assert_response :success
  end
end
