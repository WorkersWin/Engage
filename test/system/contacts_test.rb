require "application_system_test_case"

class ContactsTest < ApplicationSystemTestCase
  setup do
    @contact = contacts(:one)
  end

  test "visiting the index" do
    visit contacts_url
    assert_selector "h1", text: "Contacts"
  end

  test "should create contact" do
    visit contacts_url
    click_on "New contact"

    fill_in "First name", with: @contact.first_name
    fill_in "Last name", with: @contact.last_name
    fill_in "Mobile phone", with: @contact.personal_phone
    fill_in "Personal email", with: @contact.personal_email
    fill_in "Pronouns", with: @contact.pronouns
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "should update Contact" do
    visit contact_url(@contact)
    click_on "Edit this contact", match: :first

    fill_in "First name", with: @contact.first_name
    fill_in "Last name", with: @contact.last_name
    fill_in "Mobile phone", with: @contact.personal_phone
    fill_in "Personal email", with: @contact.personal_email
    fill_in "Pronouns", with: @contact.pronouns
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact" do
    visit contact_url(@contact)
    click_on "Destroy this contact", match: :first

    assert_text "Contact was successfully destroyed"
  end
end
