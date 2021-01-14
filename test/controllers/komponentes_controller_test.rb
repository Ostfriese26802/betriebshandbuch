require 'test_helper'

class KomponentesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @komponente = komponentes(:one)
  end

  test "should get index" do
    get komponentes_url
    assert_response :success
  end

  test "should get new" do
    get new_komponente_url
    assert_response :success
  end

  test "should create komponente" do
    assert_difference('Komponente.count') do
      post komponentes_url, params: { komponente: { applikation_id: @komponente.applikation_id, beschreibung: @komponente.beschreibung, besonderheiten: @komponente.besonderheiten, installationspfad: @komponente.installationspfad, name: @komponente.name, port: @komponente.port, start: @komponente.start, stop: @komponente.stop } }
    end

    assert_redirected_to komponente_url(Komponente.last)
  end

  test "should show komponente" do
    get komponente_url(@komponente)
    assert_response :success
  end

  test "should get edit" do
    get edit_komponente_url(@komponente)
    assert_response :success
  end

  test "should update komponente" do
    patch komponente_url(@komponente), params: { komponente: { applikation_id: @komponente.applikation_id, beschreibung: @komponente.beschreibung, besonderheiten: @komponente.besonderheiten, installationspfad: @komponente.installationspfad, name: @komponente.name, port: @komponente.port, start: @komponente.start, stop: @komponente.stop } }
    assert_redirected_to komponente_url(@komponente)
  end

  test "should destroy komponente" do
    assert_difference('Komponente.count', -1) do
      delete komponente_url(@komponente)
    end

    assert_redirected_to komponentes_url
  end
end
