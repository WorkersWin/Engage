require "application_system_test_case"

class SocialMediaTypesTest < ApplicationSystemTestCase
  setup do
    @social_media_type = social_media_types(:one)
  end

  test "visiting the index" do
    visit social_media_types_url
    assert_selector "h1", text: "Social media types"
  end

  test "should create social media type" do
    visit social_media_types_url
    click_on "New social media type"

    fill_in "Description", with: @social_media_type.description
    fill_in "Name", with: @social_media_type.name
    click_on "Create Social media type"

    assert_text "Social media type was successfully created"
    click_on "Back"
  end

  test "should update Social media type" do
    visit social_media_type_url(@social_media_type)
    click_on "Edit this social media type", match: :first

    fill_in "Description", with: @social_media_type.description
    fill_in "Name", with: @social_media_type.name
    click_on "Update Social media type"

    assert_text "Social media type was successfully updated"
    click_on "Back"
  end

  test "should destroy Social media type" do
    visit social_media_type_url(@social_media_type)
    click_on "Destroy this social media type", match: :first

    assert_text "Social media type was successfully destroyed"
  end
end
