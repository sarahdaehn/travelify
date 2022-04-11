require "application_system_test_case"

class CreatecitiesTest < ApplicationSystemTestCase
  setup do
    @createcity = createcities(:one)
  end

  test "visiting the index" do
    visit createcities_url
    assert_selector "h1", text: "Createcities"
  end

  test "should create createcity" do
    visit createcities_url
    click_on "New createcity"

    fill_in "Country", with: @createcity.country
    fill_in "Highlights", with: @createcity.highlights
    fill_in "Name", with: @createcity.name
    click_on "Create Createcity"

    assert_text "Createcity was successfully created"
    click_on "Back"
  end

  test "should update Createcity" do
    visit createcity_url(@createcity)
    click_on "Edit this createcity", match: :first

    fill_in "Country", with: @createcity.country
    fill_in "Highlights", with: @createcity.highlights
    fill_in "Name", with: @createcity.name
    click_on "Update Createcity"

    assert_text "Createcity was successfully updated"
    click_on "Back"
  end

  test "should destroy Createcity" do
    visit createcity_url(@createcity)
    click_on "Destroy this createcity", match: :first

    assert_text "Createcity was successfully destroyed"
  end
end
