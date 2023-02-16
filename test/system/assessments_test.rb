require "application_system_test_case"

class AssessmentsTest < ApplicationSystemTestCase
  setup do
    @assessment = assessments(:one)
  end

  test "visiting the index" do
    visit assessments_url
    assert_selector "h1", text: "Assessments"
  end

  test "should create assessment" do
    visit assessments_url
    click_on "New assessment"

    fill_in "Assessed on", with: @assessment.assessed_on
    fill_in "Assessee", with: @assessment.assessee_id
    fill_in "Assessment level", with: @assessment.assessment_level_id
    fill_in "Assessor", with: @assessment.assessor_id
    click_on "Create Assessment"

    assert_text "Assessment was successfully created"
    click_on "Back"
  end

  test "should update Assessment" do
    visit assessment_url(@assessment)
    click_on "Edit this assessment", match: :first

    fill_in "Assessed on", with: @assessment.assessed_on
    fill_in "Assessee", with: @assessment.assessee_id
    fill_in "Assessment level", with: @assessment.assessment_level_id
    fill_in "Assessor", with: @assessment.assessor_id
    click_on "Update Assessment"

    assert_text "Assessment was successfully updated"
    click_on "Back"
  end

  test "should destroy Assessment" do
    visit assessment_url(@assessment)
    click_on "Destroy this assessment", match: :first

    assert_text "Assessment was successfully destroyed"
  end
end
