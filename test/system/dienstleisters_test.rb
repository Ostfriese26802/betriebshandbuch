require "application_system_test_case"

class DienstleistersTest < ApplicationSystemTestCase
  setup do
    @dienstleister = dienstleisters(:one)
  end

  test "visiting the index" do
    visit dienstleisters_url
    assert_selector "h1", text: "Dienstleisters"
  end

  test "creating a Dienstleister" do
    visit dienstleisters_url
    click_on "New Dienstleister"

    fill_in "Bereitschaftsnummer", with: @dienstleister.bereitschaftsnummer
    fill_in "Email", with: @dienstleister.email
    fill_in "Name", with: @dienstleister.name
    fill_in "Servicezeiten", with: @dienstleister.servicezeiten
    fill_in "Telefonnummer", with: @dienstleister.telefonnummer
    click_on "Create Dienstleister"

    assert_text "Dienstleister was successfully created"
    click_on "Back"
  end

  test "updating a Dienstleister" do
    visit dienstleisters_url
    click_on "Edit", match: :first

    fill_in "Bereitschaftsnummer", with: @dienstleister.bereitschaftsnummer
    fill_in "Email", with: @dienstleister.email
    fill_in "Name", with: @dienstleister.name
    fill_in "Servicezeiten", with: @dienstleister.servicezeiten
    fill_in "Telefonnummer", with: @dienstleister.telefonnummer
    click_on "Update Dienstleister"

    assert_text "Dienstleister was successfully updated"
    click_on "Back"
  end

  test "destroying a Dienstleister" do
    visit dienstleisters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dienstleister was successfully destroyed"
  end
end
