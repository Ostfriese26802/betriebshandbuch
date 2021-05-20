require 'test_helper'

class AufgabensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @aufgaben = aufgabens(:one)
  end

  test "should get index" do
    get aufgabens_url
    assert_response :success
  end

  test "should get new" do
    get new_aufgaben_url
    assert_response :success
  end

  test "should create aufgaben" do
    assert_difference('Aufgaben.count') do
      post aufgabens_url, params: { aufgaben: { applikation_id: @aufgaben.applikation_id, beschreibung: @aufgaben.beschreibung, name: @aufgaben.name, zeitpunkt: @aufgaben.zeitpunkt } }
    end

    assert_redirected_to aufgaben_url(Aufgaben.last)
  end

  test "should show aufgaben" do
    get aufgaben_url(@aufgaben)
    assert_response :success
  end

  test "should get edit" do
    get edit_aufgaben_url(@aufgaben)
    assert_response :success
  end

  test "should update aufgaben" do
    patch aufgaben_url(@aufgaben), params: { aufgaben: { applikation_id: @aufgaben.applikation_id, beschreibung: @aufgaben.beschreibung, name: @aufgaben.name, zeitpunkt: @aufgaben.zeitpunkt } }
    assert_redirected_to aufgaben_url(@aufgaben)
  end

  test "should destroy aufgaben" do
    assert_difference('Aufgaben.count', -1) do
      delete aufgaben_url(@aufgaben)
    end

    assert_redirected_to aufgabens_url
  end
end
