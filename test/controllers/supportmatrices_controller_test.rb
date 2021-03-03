require 'test_helper'

class SupportmatricesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @supportmatrix = supportmatrices(:one)
  end

  test "should get index" do
    get supportmatrices_url
    assert_response :success
  end

  test "should get new" do
    get new_supportmatrix_url
    assert_response :success
  end

  test "should create supportmatrix" do
    assert_difference('Supportmatrix.count') do
      post supportmatrices_url, params: { supportmatrix: { applikation_id: @supportmatrix.applikation_id, beschreibung: @supportmatrix.beschreibung, dienstleister_id: @supportmatrix.dienstleister_id, fachgruppe_id: @supportmatrix.fachgruppe_id, was: @supportmatrix.was } }
    end

    assert_redirected_to supportmatrix_url(Supportmatrix.last)
  end

  test "should show supportmatrix" do
    get supportmatrix_url(@supportmatrix)
    assert_response :success
  end

  test "should get edit" do
    get edit_supportmatrix_url(@supportmatrix)
    assert_response :success
  end

  test "should update supportmatrix" do
    patch supportmatrix_url(@supportmatrix), params: { supportmatrix: { applikation_id: @supportmatrix.applikation_id, beschreibung: @supportmatrix.beschreibung, dienstleister_id: @supportmatrix.dienstleister_id, fachgruppe_id: @supportmatrix.fachgruppe_id, was: @supportmatrix.was } }
    assert_redirected_to supportmatrix_url(@supportmatrix)
  end

  test "should destroy supportmatrix" do
    assert_difference('Supportmatrix.count', -1) do
      delete supportmatrix_url(@supportmatrix)
    end

    assert_redirected_to supportmatrices_url
  end
end
