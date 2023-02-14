require "test_helper"

class JobLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_level = job_levels(:one)
  end

  test "should get index" do
    get job_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_job_level_url
    assert_response :success
  end

  test "should create job_level" do
    assert_difference("JobLevel.count") do
      post job_levels_url, params: { job_level: { description: @job_level.description, level: @job_level.level } }
    end

    assert_redirected_to job_level_url(JobLevel.last)
  end

  test "should show job_level" do
    get job_level_url(@job_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_level_url(@job_level)
    assert_response :success
  end

  test "should update job_level" do
    patch job_level_url(@job_level), params: { job_level: { description: @job_level.description, level: @job_level.level } }
    assert_redirected_to job_level_url(@job_level)
  end

  test "should destroy job_level" do
    assert_difference("JobLevel.count", -1) do
      delete job_level_url(@job_level)
    end

    assert_redirected_to job_levels_url
  end
end
