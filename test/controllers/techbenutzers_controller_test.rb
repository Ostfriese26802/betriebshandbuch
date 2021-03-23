require 'test_helper'

class TechbenutzersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @techbenutzer = techbenutzers(:one)
  end

  test "should get index" do
    get techbenutzers_url
    assert_response :success
  end

  test "should get new" do
    get new_techbenutzer_url
    assert_response :success
  end

  test "should create techbenutzer" do
    assert_difference('Techbenutzer.count') do
      post techbenutzers_url, params: { techbenutzer: { applikation_id: @techbenutzer.applikation_id, kennwort: @techbenutzer.kennwort, name: @techbenutzer.name } }
    end

    assert_redirected_to techbenutzer_url(Techbenutzer.last)
  end

  test "should show techbenutzer" do
    get techbenutzer_url(@techbenutzer)
    assert_response :success
  end

  test "should get edit" do
    get edit_techbenutzer_url(@techbenutzer)
    assert_response :success
  end

  test "should update techbenutzer" do
    patch techbenutzer_url(@techbenutzer), params: { techbenutzer: { applikation_id: @techbenutzer.applikation_id, kennwort: @techbenutzer.kennwort, name: @techbenutzer.name } }
    assert_redirected_to techbenutzer_url(@techbenutzer)
  end

  test "should destroy techbenutzer" do
    assert_difference('Techbenutzer.count', -1) do
      delete techbenutzer_url(@techbenutzer)
    end

    assert_redirected_to techbenutzers_url
  end
end
