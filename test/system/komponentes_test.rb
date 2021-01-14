require "application_system_test_case"

class KomponentesTest < ApplicationSystemTestCase
  setup do
    @komponente = komponentes(:one)
  end

  test "visiting the index" do
    visit komponentes_url
    assert_selector "h1", text: "Komponentes"
  end

  test "creating a Komponente" do
    visit komponentes_url
    click_on "New Komponente"

    fill_in "Applikation", with: @komponente.applikation_id
    fill_in "Beschreibung", with: @komponente.beschreibung
    fill_in "Besonderheiten", with: @komponente.besonderheiten
    fill_in "Installationspfad", with: @komponente.installationspfad
    fill_in "Name", with: @komponente.name
    fill_in "Port", with: @komponente.port
    fill_in "Start", with: @komponente.start
    fill_in "Stop", with: @komponente.stop
    click_on "Create Komponente"

    assert_text "Komponente was successfully created"
    click_on "Back"
  end

  test "updating a Komponente" do
    visit komponentes_url
    click_on "Edit", match: :first

    fill_in "Applikation", with: @komponente.applikation_id
    fill_in "Beschreibung", with: @komponente.beschreibung
    fill_in "Besonderheiten", with: @komponente.besonderheiten
    fill_in "Installationspfad", with: @komponente.installationspfad
    fill_in "Name", with: @komponente.name
    fill_in "Port", with: @komponente.port
    fill_in "Start", with: @komponente.start
    fill_in "Stop", with: @komponente.stop
    click_on "Update Komponente"

    assert_text "Komponente was successfully updated"
    click_on "Back"
  end

  test "destroying a Komponente" do
    visit komponentes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Komponente was successfully destroyed"
  end
end
