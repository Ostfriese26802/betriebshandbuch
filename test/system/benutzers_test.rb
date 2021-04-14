require "application_system_test_case"

class BenutzersTest < ApplicationSystemTestCase
  setup do
    @benutzer = benutzers(:one)
  end

  test "visiting the index" do
    visit benutzers_url
    assert_selector "h1", text: "Benutzers"
  end

  test "creating a Benutzer" do
    visit benutzers_url
    click_on "New Benutzer"

    fill_in "Email", with: @benutzer.email
    fill_in "Name", with: @benutzer.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Rechte", with: @benutzer.rechte
    click_on "Create Benutzer"

    assert_text "Benutzer was successfully created"
    click_on "Back"
  end

  test "updating a Benutzer" do
    visit benutzers_url
    click_on "Edit", match: :first

    fill_in "Email", with: @benutzer.email
    fill_in "Name", with: @benutzer.name
    fill_in "Password", with: 'secret'
    fill_in "Password confirmation", with: 'secret'
    fill_in "Rechte", with: @benutzer.rechte
    click_on "Update Benutzer"

    assert_text "Benutzer was successfully updated"
    click_on "Back"
  end

  test "destroying a Benutzer" do
    visit benutzers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Benutzer was successfully destroyed"
  end
end
