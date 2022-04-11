require "test_helper"

class CreatecitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @createcity = createcities(:one)
  end

  test "should get index" do
    get createcities_url
    assert_response :success
  end

  test "should get new" do
    get new_createcity_url
    assert_response :success
  end

  test "should create createcity" do
    assert_difference("Createcity.count") do
      post createcities_url, params: { createcity: { country: @createcity.country, highlights: @createcity.highlights, name: @createcity.name } }
    end

    assert_redirected_to createcity_url(Createcity.last)
  end

  test "should show createcity" do
    get createcity_url(@createcity)
    assert_response :success
  end

  test "should get edit" do
    get edit_createcity_url(@createcity)
    assert_response :success
  end

  test "should update createcity" do
    patch createcity_url(@createcity), params: { createcity: { country: @createcity.country, highlights: @createcity.highlights, name: @createcity.name } }
    assert_redirected_to createcity_url(@createcity)
  end

  test "should destroy createcity" do
    assert_difference("Createcity.count", -1) do
      delete createcity_url(@createcity)
    end

    assert_redirected_to createcities_url
  end
end
