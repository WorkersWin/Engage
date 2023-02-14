require "application_system_test_case"

class AssessmentLevelsTest < ApplicationSystemTestCase
  setup do
    @assessment_level = assessment_levels(:one)
  end

  test "visiting the index" do
    visit assessment_levels_url
    assert_selector "h1", text: "Assessment levels"
  end

  test "should create assessment level" do
    visit assessment_levels_url
    click_on "New assessment level"

    fill_in "Description", with: @assessment_level.description
    fill_in "Level", with: @assessment_level.level
    click_on "Create Assessment level"

    assert_text "Assessment level was successfully created"
    click_on "Back"
  end

  test "should update Assessment level" do
    visit assessment_level_url(@assessment_level)
    click_on "Edit this assessment level", match: :first

    fill_in "Description", with: @assessment_level.description
    fill_in "Level", with: @assessment_level.level
    click_on "Update Assessment level"

    assert_text "Assessment level was successfully updated"
    click_on "Back"
  end

  test "should destroy Assessment level" do
    visit assessment_level_url(@assessment_level)
    click_on "Destroy this assessment level", match: :first

    assert_text "Assessment level was successfully destroyed"
  end
end
