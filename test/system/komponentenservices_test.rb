require "application_system_test_case"

class KomponentenservicesTest < ApplicationSystemTestCase
  setup do
    @komponentenservice = komponentenservices(:one)
  end

  test "visiting the index" do
    visit komponentenservices_url
    assert_selector "h1", text: "Komponentenservices"
  end

  test "creating a Komponentenservice" do
    visit komponentenservices_url
    click_on "New Komponentenservice"

    fill_in "Beschreibung", with: @komponentenservice.beschreibung
    fill_in "Komponente", with: @komponentenservice.komponente_id
    fill_in "Name", with: @komponentenservice.name
    click_on "Create Komponentenservice"

    assert_text "Komponentenservice was successfully created"
    click_on "Back"
  end

  test "updating a Komponentenservice" do
    visit komponentenservices_url
    click_on "Edit", match: :first

    fill_in "Beschreibung", with: @komponentenservice.beschreibung
    fill_in "Komponente", with: @komponentenservice.komponente_id
    fill_in "Name", with: @komponentenservice.name
    click_on "Update Komponentenservice"

    assert_text "Komponentenservice was successfully updated"
    click_on "Back"
  end

  test "destroying a Komponentenservice" do
    visit komponentenservices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Komponentenservice was successfully destroyed"
  end
end
