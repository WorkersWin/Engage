require "test_helper"

class EmploymentTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @employment_type = employment_types(:one)
  end

  test "should get index" do
    get employment_types_url
    assert_response :success
  end

  test "should get new" do
    get new_employment_type_url
    assert_response :success
  end

  test "should create employment_type" do
    assert_difference("EmploymentType.count") do
      post employment_types_url, params: { employment_type: { description: @employment_type.description, name: @employment_type.name } }
    end

    assert_redirected_to employment_type_url(EmploymentType.last)
  end

  test "should show employment_type" do
    get employment_type_url(@employment_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_employment_type_url(@employment_type)
    assert_response :success
  end

  test "should update employment_type" do
    patch employment_type_url(@employment_type), params: { employment_type: { description: @employment_type.description, name: @employment_type.name } }
    assert_redirected_to employment_type_url(@employment_type)
  end

  test "should destroy employment_type" do
    assert_difference("EmploymentType.count", -1) do
      delete employment_type_url(@employment_type)
    end

    assert_redirected_to employment_types_url
  end
end
