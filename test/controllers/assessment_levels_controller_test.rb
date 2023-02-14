require "test_helper"

class AssessmentLevelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assessment_level = assessment_levels(:one)
  end

  test "should get index" do
    get assessment_levels_url
    assert_response :success
  end

  test "should get new" do
    get new_assessment_level_url
    assert_response :success
  end

  test "should create assessment_level" do
    assert_difference("AssessmentLevel.count") do
      post assessment_levels_url, params: { assessment_level: { description: @assessment_level.description, level: @assessment_level.level } }
    end

    assert_redirected_to assessment_level_url(AssessmentLevel.last)
  end

  test "should show assessment_level" do
    get assessment_level_url(@assessment_level)
    assert_response :success
  end

  test "should get edit" do
    get edit_assessment_level_url(@assessment_level)
    assert_response :success
  end

  test "should update assessment_level" do
    patch assessment_level_url(@assessment_level), params: { assessment_level: { description: @assessment_level.description, level: @assessment_level.level } }
    assert_redirected_to assessment_level_url(@assessment_level)
  end

  test "should destroy assessment_level" do
    assert_difference("AssessmentLevel.count", -1) do
      delete assessment_level_url(@assessment_level)
    end

    assert_redirected_to assessment_levels_url
  end
end
