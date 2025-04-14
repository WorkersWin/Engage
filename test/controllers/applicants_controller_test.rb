require "test_helper"

class ApplicantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applicant = applicants(:one)
  end

  test "should get index" do
    get applicants_url
    assert_response :success
  end

  test "should get new" do
    get new_applicant_url
    assert_response :success
  end

  test "should create applicant" do
    assert_difference("Applicant.count") do
      post applicants_url, params: { applicant: { first_name: @applicant.first_name, job_level: @applicant.job_level, job_title: @applicant.job_title, last_name: @applicant.last_name, note: @applicant.note, personal_cell_phone: @applicant.personal_cell_phone, personal_email_address: @applicant.personal_email_address, work_location_code: @applicant.work_location_code, work_username: @applicant.work_username } }
    end

    assert_redirected_to applicant_url(Applicant.last)
  end

  test "should show applicant" do
    get applicant_url(@applicant)
    assert_response :success
  end

  test "should get edit" do
    get edit_applicant_url(@applicant)
    assert_response :success
  end

  test "should update applicant" do
    patch applicant_url(@applicant), params: { applicant: { first_name: @applicant.first_name, job_level: @applicant.job_level, job_title: @applicant.job_title, last_name: @applicant.last_name, note: @applicant.note, personal_cell_phone: @applicant.personal_cell_phone, personal_email_address: @applicant.personal_email_address, work_location_code: @applicant.work_location_code, work_username: @applicant.work_username } }
    assert_redirected_to applicant_url(@applicant)
  end

  test "should destroy applicant" do
    assert_difference("Applicant.count", -1) do
      delete applicant_url(@applicant)
    end

    assert_redirected_to applicants_url
  end
end
