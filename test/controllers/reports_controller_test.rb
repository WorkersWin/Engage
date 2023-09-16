require "test_helper"

class ReportsControllerTest < ActionDispatch::IntegrationTest
  test "should get assessments_by_level" do
    get reports_assessments_by_level_url
    assert_response :success
  end
end
