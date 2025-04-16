require "application_system_test_case"

class EmploymentTypesTest < ApplicationSystemTestCase
  setup do
    @employment_type = employment_types(:one)
  end

  test "visiting the index" do
    visit employment_types_url
    assert_selector "h1", text: "Employment types"
  end

  test "should create employment type" do
    visit employment_types_url
    click_on "New employment type"

    fill_in "Description", with: @employment_type.description
    fill_in "Name", with: @employment_type.name
    click_on "Create Employment type"

    assert_text "Employment type was successfully created"
    click_on "Back"
  end

  test "should update Employment type" do
    visit employment_type_url(@employment_type)
    click_on "Edit this employment type", match: :first

    fill_in "Description", with: @employment_type.description
    fill_in "Name", with: @employment_type.name
    click_on "Update Employment type"

    assert_text "Employment type was successfully updated"
    click_on "Back"
  end

  test "should destroy Employment type" do
    visit employment_type_url(@employment_type)
    click_on "Destroy this employment type", match: :first

    assert_text "Employment type was successfully destroyed"
  end
end
