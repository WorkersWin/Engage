require "test_helper"

class JobTitlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @job_title = job_titles(:one)
  end

  test "should get index" do
    get job_titles_url
    assert_response :success
  end

  test "should get new" do
    get new_job_title_url
    assert_response :success
  end

  test "should create job_title" do
    assert_difference("JobTitle.count") do
      post job_titles_url, params: { job_title: { description: @job_title.description, title: @job_title.title } }
    end

    assert_redirected_to job_title_url(JobTitle.last)
  end

  test "should show job_title" do
    get job_title_url(@job_title)
    assert_response :success
  end

  test "should get edit" do
    get edit_job_title_url(@job_title)
    assert_response :success
  end

  test "should update job_title" do
    patch job_title_url(@job_title), params: { job_title: { description: @job_title.description, title: @job_title.title } }
    assert_redirected_to job_title_url(@job_title)
  end

  test "should destroy job_title" do
    assert_difference("JobTitle.count", -1) do
      delete job_title_url(@job_title)
    end

    assert_redirected_to job_titles_url
  end
end
