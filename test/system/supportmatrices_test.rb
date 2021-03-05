require "application_system_test_case"

class SupportmatricesTest < ApplicationSystemTestCase
  setup do
    @supportmatrix = supportmatrices(:one)
  end

  test "visiting the index" do
    visit supportmatrices_url
    assert_selector "h1", text: "Supportmatrices"
  end

  test "creating a Supportmatrix" do
    visit supportmatrices_url
    click_on "New Supportmatrix"

    fill_in "Applikation", with: @supportmatrix.applikation_id
    fill_in "Beschreibung", with: @supportmatrix.beschreibung
    fill_in "Dienstleister", with: @supportmatrix.dienstleister_id
    fill_in "Fachgruppe", with: @supportmatrix.fachgruppe_id
    fill_in "Was", with: @supportmatrix.was
    click_on "Create Supportmatrix"

    assert_text "Supportmatrix was successfully created"
    click_on "Back"
  end

  test "updating a Supportmatrix" do
    visit supportmatrices_url
    click_on "Edit", match: :first

    fill_in "Applikation", with: @supportmatrix.applikation_id
    fill_in "Beschreibung", with: @supportmatrix.beschreibung
    fill_in "Dienstleister", with: @supportmatrix.dienstleister_id
    fill_in "Fachgruppe", with: @supportmatrix.fachgruppe_id
    fill_in "Was", with: @supportmatrix.was
    click_on "Update Supportmatrix"

    assert_text "Supportmatrix was successfully updated"
    click_on "Back"
  end

  test "destroying a Supportmatrix" do
    visit supportmatrices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Supportmatrix was successfully destroyed"
  end
end
