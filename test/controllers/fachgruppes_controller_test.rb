require 'test_helper'

class FachgruppesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fachgruppe = fachgruppes(:one)
  end

  test "should get index" do
    get fachgruppes_url
    assert_response :success
  end

  test "should get new" do
    get new_fachgruppe_url
    assert_response :success
  end

  test "should create fachgruppe" do
    assert_difference('Fachgruppe.count') do
      post fachgruppes_url, params: { fachgruppe: { bereitschaft: @fachgruppe.bereitschaft, email: @fachgruppe.email, name: @fachgruppe.name, telefonnummer: @fachgruppe.telefonnummer, ticketgruppe: @fachgruppe.ticketgruppe } }
    end

    assert_redirected_to fachgruppe_url(Fachgruppe.last)
  end

  test "should show fachgruppe" do
    get fachgruppe_url(@fachgruppe)
    assert_response :success
  end

  test "should get edit" do
    get edit_fachgruppe_url(@fachgruppe)
    assert_response :success
  end

  test "should update fachgruppe" do
    patch fachgruppe_url(@fachgruppe), params: { fachgruppe: { bereitschaft: @fachgruppe.bereitschaft, email: @fachgruppe.email, name: @fachgruppe.name, telefonnummer: @fachgruppe.telefonnummer, ticketgruppe: @fachgruppe.ticketgruppe } }
    assert_redirected_to fachgruppe_url(@fachgruppe)
  end

  test "should destroy fachgruppe" do
    assert_difference('Fachgruppe.count', -1) do
      delete fachgruppe_url(@fachgruppe)
    end

    assert_redirected_to fachgruppes_url
  end
end
