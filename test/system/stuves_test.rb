require "application_system_test_case"

class StuvesTest < ApplicationSystemTestCase
  setup do
    @stufe = stuves(:one)
  end

  test "visiting the index" do
    visit stuves_url
    assert_selector "h1", text: "Stuves"
  end

  test "creating a Stufe" do
    visit stuves_url
    click_on "New Stufe"

    fill_in "Beschreibung", with: @stufe.beschreibung
    fill_in "Kunde", with: @stufe.kunde_id
    fill_in "Name", with: @stufe.name
    click_on "Create Stufe"

    assert_text "Stufe was successfully created"
    click_on "Back"
  end

  test "updating a Stufe" do
    visit stuves_url
    click_on "Edit", match: :first

    fill_in "Beschreibung", with: @stufe.beschreibung
    fill_in "Kunde", with: @stufe.kunde_id
    fill_in "Name", with: @stufe.name
    click_on "Update Stufe"

    assert_text "Stufe was successfully updated"
    click_on "Back"
  end

  test "destroying a Stufe" do
    visit stuves_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Stufe was successfully destroyed"
  end
end
