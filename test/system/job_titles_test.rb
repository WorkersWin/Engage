require "application_system_test_case"

class JobTitlesTest < ApplicationSystemTestCase
  setup do
    @job_title = job_titles(:one)
  end

  test "visiting the index" do
    visit job_titles_url
    assert_selector "h1", text: "Job titles"
  end

  test "should create job title" do
    visit job_titles_url
    click_on "New job title"

    fill_in "Description", with: @job_title.description
    fill_in "Title", with: @job_title.title
    click_on "Create Job title"

    assert_text "Job title was successfully created"
    click_on "Back"
  end

  test "should update Job title" do
    visit job_title_url(@job_title)
    click_on "Edit this job title", match: :first

    fill_in "Description", with: @job_title.description
    fill_in "Title", with: @job_title.title
    click_on "Update Job title"

    assert_text "Job title was successfully updated"
    click_on "Back"
  end

  test "should destroy Job title" do
    visit job_title_url(@job_title)
    click_on "Destroy this job title", match: :first

    assert_text "Job title was successfully destroyed"
  end
end
