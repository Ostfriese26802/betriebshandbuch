require 'test_helper'

class DienstleistersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dienstleister = dienstleisters(:one)
  end

  test "should get index" do
    get dienstleisters_url
    assert_response :success
  end

  test "should get new" do
    get new_dienstleister_url
    assert_response :success
  end

  test "should create dienstleister" do
    assert_difference('Dienstleister.count') do
      post dienstleisters_url, params: { dienstleister: { bereitschaftsnummer: @dienstleister.bereitschaftsnummer, email: @dienstleister.email, name: @dienstleister.name, servicezeiten: @dienstleister.servicezeiten, telefonnummer: @dienstleister.telefonnummer } }
    end

    assert_redirected_to dienstleister_url(Dienstleister.last)
  end

  test "should show dienstleister" do
    get dienstleister_url(@dienstleister)
    assert_response :success
  end

  test "should get edit" do
    get edit_dienstleister_url(@dienstleister)
    assert_response :success
  end

  test "should update dienstleister" do
    patch dienstleister_url(@dienstleister), params: { dienstleister: { bereitschaftsnummer: @dienstleister.bereitschaftsnummer, email: @dienstleister.email, name: @dienstleister.name, servicezeiten: @dienstleister.servicezeiten, telefonnummer: @dienstleister.telefonnummer } }
    assert_redirected_to dienstleister_url(@dienstleister)
  end

  test "should destroy dienstleister" do
    assert_difference('Dienstleister.count', -1) do
      delete dienstleister_url(@dienstleister)
    end

    assert_redirected_to dienstleisters_url
  end
end
