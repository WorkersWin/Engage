require "test_helper"

class SocialMediaTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @social_media_type = social_media_types(:one)
  end

  test "should get index" do
    get social_media_types_url
    assert_response :success
  end

  test "should get new" do
    get new_social_media_type_url
    assert_response :success
  end

  test "should create social_media_type" do
    assert_difference("SocialMediaType.count") do
      post social_media_types_url, params: { social_media_type: { description: @social_media_type.description, name: @social_media_type.name } }
    end

    assert_redirected_to social_media_type_url(SocialMediaType.last)
  end

  test "should show social_media_type" do
    get social_media_type_url(@social_media_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_social_media_type_url(@social_media_type)
    assert_response :success
  end

  test "should update social_media_type" do
    patch social_media_type_url(@social_media_type), params: { social_media_type: { description: @social_media_type.description, name: @social_media_type.name } }
    assert_redirected_to social_media_type_url(@social_media_type)
  end

  test "should destroy social_media_type" do
    assert_difference("SocialMediaType.count", -1) do
      delete social_media_type_url(@social_media_type)
    end

    assert_redirected_to social_media_types_url
  end
end
