require "test_helper"

class CitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get cities_home_url
    assert_response :success
  end

  test "should get about" do
    get cities_about_url
    assert_response :success
  end
end
