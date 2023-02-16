require "application_system_test_case"

class ContactTookTrainingsTest < ApplicationSystemTestCase
  setup do
    @contact_took_training = contact_took_trainings(:one)
  end

  test "visiting the index" do
    visit contact_took_trainings_url
    assert_selector "h1", text: "Contact took trainings"
  end

  test "should create contact took training" do
    visit contact_took_trainings_url
    click_on "New contact took training"

    fill_in "Contact", with: @contact_took_training.contact_id
    fill_in "Trained on", with: @contact_took_training.trained_on
    fill_in "Training", with: @contact_took_training.training_id
    click_on "Create Contact took training"

    assert_text "Contact took training was successfully created"
    click_on "Back"
  end

  test "should update Contact took training" do
    visit contact_took_training_url(@contact_took_training)
    click_on "Edit this contact took training", match: :first

    fill_in "Contact", with: @contact_took_training.contact_id
    fill_in "Trained on", with: @contact_took_training.trained_on
    fill_in "Training", with: @contact_took_training.training_id
    click_on "Update Contact took training"

    assert_text "Contact took training was successfully updated"
    click_on "Back"
  end

  test "should destroy Contact took training" do
    visit contact_took_training_url(@contact_took_training)
    click_on "Destroy this contact took training", match: :first

    assert_text "Contact took training was successfully destroyed"
  end
end
