require 'test_helper'

class ApplikationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @applikation = applikations(:one)
  end

  test "should get index" do
    get applikations_url
    assert_response :success
  end

  test "should get new" do
    get new_applikation_url
    assert_response :success
  end

  test "should create applikation" do
    assert_difference('Applikation.count') do
      post applikations_url, params: { applikation: { beschreibung: @applikation.beschreibung, kunde_id: @applikation.kunde_id, name: @applikation.name } }
    end

    assert_redirected_to applikation_url(Applikation.last)
  end

  test "should show applikation" do
    get applikation_url(@applikation)
    assert_response :success
  end

  test "should get edit" do
    get edit_applikation_url(@applikation)
    assert_response :success
  end

  test "should update applikation" do
    patch applikation_url(@applikation), params: { applikation: { beschreibung: @applikation.beschreibung, kunde_id: @applikation.kunde_id, name: @applikation.name } }
    assert_redirected_to applikation_url(@applikation)
  end

  test "should destroy applikation" do
    assert_difference('Applikation.count', -1) do
      delete applikation_url(@applikation)
    end

    assert_redirected_to applikations_url
  end
end
