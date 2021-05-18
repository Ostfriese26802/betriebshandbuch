require "application_system_test_case"

class AufgabensTest < ApplicationSystemTestCase
  setup do
    @aufgaben = aufgabens(:one)
  end

  test "visiting the index" do
    visit aufgabens_url
    assert_selector "h1", text: "Aufgabens"
  end

  test "creating a Aufgaben" do
    visit aufgabens_url
    click_on "New Aufgaben"

    fill_in "Applikation", with: @aufgaben.applikation_id
    fill_in "Beschreibung", with: @aufgaben.beschreibung
    fill_in "Name", with: @aufgaben.name
    fill_in "Zeitpunkt", with: @aufgaben.zeitpunkt
    click_on "Create Aufgaben"

    assert_text "Aufgaben was successfully created"
    click_on "Back"
  end

  test "updating a Aufgaben" do
    visit aufgabens_url
    click_on "Edit", match: :first

    fill_in "Applikation", with: @aufgaben.applikation_id
    fill_in "Beschreibung", with: @aufgaben.beschreibung
    fill_in "Name", with: @aufgaben.name
    fill_in "Zeitpunkt", with: @aufgaben.zeitpunkt
    click_on "Update Aufgaben"

    assert_text "Aufgaben was successfully updated"
    click_on "Back"
  end

  test "destroying a Aufgaben" do
    visit aufgabens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Aufgaben was successfully destroyed"
  end
end
