require "test_helper"

class ContactTookTrainingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @contact_took_training = contact_took_trainings(:one)
  end

  test "should get index" do
    get contact_took_trainings_url
    assert_response :success
  end

  test "should get new" do
    get new_contact_took_training_url
    assert_response :success
  end

  test "should create contact_took_training" do
    assert_difference("ContactTookTraining.count") do
      post contact_took_trainings_url, params: { contact_took_training: { contact_id: @contact_took_training.contact_id, trained_on: @contact_took_training.trained_on, training_id: @contact_took_training.training_id } }
    end

    assert_redirected_to contact_took_training_url(ContactTookTraining.last)
  end

  test "should show contact_took_training" do
    get contact_took_training_url(@contact_took_training)
    assert_response :success
  end

  test "should get edit" do
    get edit_contact_took_training_url(@contact_took_training)
    assert_response :success
  end

  test "should update contact_took_training" do
    patch contact_took_training_url(@contact_took_training), params: { contact_took_training: { contact_id: @contact_took_training.contact_id, trained_on: @contact_took_training.trained_on, training_id: @contact_took_training.training_id } }
    assert_redirected_to contact_took_training_url(@contact_took_training)
  end

  test "should destroy contact_took_training" do
    assert_difference("ContactTookTraining.count", -1) do
      delete contact_took_training_url(@contact_took_training)
    end

    assert_redirected_to contact_took_trainings_url
  end
end
