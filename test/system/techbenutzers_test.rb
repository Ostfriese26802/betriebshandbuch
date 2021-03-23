require "application_system_test_case"

class TechbenutzersTest < ApplicationSystemTestCase
  setup do
    @techbenutzer = techbenutzers(:one)
  end

  test "visiting the index" do
    visit techbenutzers_url
    assert_selector "h1", text: "Techbenutzers"
  end

  test "creating a Techbenutzer" do
    visit techbenutzers_url
    click_on "New Techbenutzer"

    fill_in "Applikation", with: @techbenutzer.applikation_id
    fill_in "Kennwort", with: @techbenutzer.kennwort
    fill_in "Name", with: @techbenutzer.name
    click_on "Create Techbenutzer"

    assert_text "Techbenutzer was successfully created"
    click_on "Back"
  end

  test "updating a Techbenutzer" do
    visit techbenutzers_url
    click_on "Edit", match: :first

    fill_in "Applikation", with: @techbenutzer.applikation_id
    fill_in "Kennwort", with: @techbenutzer.kennwort
    fill_in "Name", with: @techbenutzer.name
    click_on "Update Techbenutzer"

    assert_text "Techbenutzer was successfully updated"
    click_on "Back"
  end

  test "destroying a Techbenutzer" do
    visit techbenutzers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Techbenutzer was successfully destroyed"
  end
end
