require "application_system_test_case"

class ApplikationsTest < ApplicationSystemTestCase
  setup do
    @applikation = applikations(:one)
  end

  test "visiting the index" do
    visit applikations_url
    assert_selector "h1", text: "Applikations"
  end

  test "creating a Applikation" do
    visit applikations_url
    click_on "New Applikation"

    fill_in "Beschreibung", with: @applikation.beschreibung
    fill_in "Kunde", with: @applikation.kunde_id
    fill_in "Name", with: @applikation.name
    click_on "Create Applikation"

    assert_text "Applikation was successfully created"
    click_on "Back"
  end

  test "updating a Applikation" do
    visit applikations_url
    click_on "Edit", match: :first

    fill_in "Beschreibung", with: @applikation.beschreibung
    fill_in "Kunde", with: @applikation.kunde_id
    fill_in "Name", with: @applikation.name
    click_on "Update Applikation"

    assert_text "Applikation was successfully updated"
    click_on "Back"
  end

  test "destroying a Applikation" do
    visit applikations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Applikation was successfully destroyed"
  end
end
