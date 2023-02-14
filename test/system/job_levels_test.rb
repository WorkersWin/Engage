require "application_system_test_case"

class JobLevelsTest < ApplicationSystemTestCase
  setup do
    @job_level = job_levels(:one)
  end

  test "visiting the index" do
    visit job_levels_url
    assert_selector "h1", text: "Job levels"
  end

  test "should create job level" do
    visit job_levels_url
    click_on "New job level"

    fill_in "Description", with: @job_level.description
    fill_in "Level", with: @job_level.level
    click_on "Create Job level"

    assert_text "Job level was successfully created"
    click_on "Back"
  end

  test "should update Job level" do
    visit job_level_url(@job_level)
    click_on "Edit this job level", match: :first

    fill_in "Description", with: @job_level.description
    fill_in "Level", with: @job_level.level
    click_on "Update Job level"

    assert_text "Job level was successfully updated"
    click_on "Back"
  end

  test "should destroy Job level" do
    visit job_level_url(@job_level)
    click_on "Destroy this job level", match: :first

    assert_text "Job level was successfully destroyed"
  end
end
