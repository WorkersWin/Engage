require "application_system_test_case"

class ApplicantsTest < ApplicationSystemTestCase
  setup do
    @applicant = applicants(:one)
  end

  test "visiting the index" do
    visit applicants_url
    assert_selector "h1", text: "Applicants"
  end

  test "should create applicant" do
    visit applicants_url
    click_on "New applicant"

    fill_in "First name", with: @applicant.first_name
    fill_in "Job level", with: @applicant.job_level
    fill_in "Job title", with: @applicant.job_title
    fill_in "Last name", with: @applicant.last_name
    fill_in "Note", with: @applicant.note
    fill_in "Personal cell phone", with: @applicant.personal_cell_phone
    fill_in "Personal email address", with: @applicant.personal_email_address
    fill_in "Work location code", with: @applicant.work_location_code
    fill_in "Work username", with: @applicant.work_username
    click_on "Create Applicant"

    assert_text "Applicant was successfully created"
    click_on "Back"
  end

  test "should update Applicant" do
    visit applicant_url(@applicant)
    click_on "Edit this applicant", match: :first

    fill_in "First name", with: @applicant.first_name
    fill_in "Job level", with: @applicant.job_level
    fill_in "Job title", with: @applicant.job_title
    fill_in "Last name", with: @applicant.last_name
    fill_in "Note", with: @applicant.note
    fill_in "Personal cell phone", with: @applicant.personal_cell_phone
    fill_in "Personal email address", with: @applicant.personal_email_address
    fill_in "Work location code", with: @applicant.work_location_code
    fill_in "Work username", with: @applicant.work_username
    click_on "Update Applicant"

    assert_text "Applicant was successfully updated"
    click_on "Back"
  end

  test "should destroy Applicant" do
    visit applicant_url(@applicant)
    click_on "Destroy this applicant", match: :first

    assert_text "Applicant was successfully destroyed"
  end
end
