require 'test_helper'

class KomponentenservicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @komponentenservice = komponentenservices(:one)
  end

  test "should get index" do
    get komponentenservices_url
    assert_response :success
  end

  test "should get new" do
    get new_komponentenservice_url
    assert_response :success
  end

  test "should create komponentenservice" do
    assert_difference('Komponentenservice.count') do
      post komponentenservices_url, params: { komponentenservice: { beschreibung: @komponentenservice.beschreibung, komponente_id: @komponentenservice.komponente_id, name: @komponentenservice.name } }
    end

    assert_redirected_to komponentenservice_url(Komponentenservice.last)
  end

  test "should show komponentenservice" do
    get komponentenservice_url(@komponentenservice)
    assert_response :success
  end

  test "should get edit" do
    get edit_komponentenservice_url(@komponentenservice)
    assert_response :success
  end

  test "should update komponentenservice" do
    patch komponentenservice_url(@komponentenservice), params: { komponentenservice: { beschreibung: @komponentenservice.beschreibung, komponente_id: @komponentenservice.komponente_id, name: @komponentenservice.name } }
    assert_redirected_to komponentenservice_url(@komponentenservice)
  end

  test "should destroy komponentenservice" do
    assert_difference('Komponentenservice.count', -1) do
      delete komponentenservice_url(@komponentenservice)
    end

    assert_redirected_to komponentenservices_url
  end
end
