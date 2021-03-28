require 'test_helper'

class StuvesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stufe = stuves(:one)
  end

  test "should get index" do
    get stuves_url
    assert_response :success
  end

  test "should get new" do
    get new_stufe_url
    assert_response :success
  end

  test "should create stufe" do
    assert_difference('Stufe.count') do
      post stuves_url, params: { stufe: { beschreibung: @stufe.beschreibung, kunde_id: @stufe.kunde_id, name: @stufe.name } }
    end

    assert_redirected_to stufe_url(Stufe.last)
  end

  test "should show stufe" do
    get stufe_url(@stufe)
    assert_response :success
  end

  test "should get edit" do
    get edit_stufe_url(@stufe)
    assert_response :success
  end

  test "should update stufe" do
    patch stufe_url(@stufe), params: { stufe: { beschreibung: @stufe.beschreibung, kunde_id: @stufe.kunde_id, name: @stufe.name } }
    assert_redirected_to stufe_url(@stufe)
  end

  test "should destroy stufe" do
    assert_difference('Stufe.count', -1) do
      delete stufe_url(@stufe)
    end

    assert_redirected_to stuves_url
  end
end
