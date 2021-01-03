require "application_system_test_case"

class FachgruppesTest < ApplicationSystemTestCase
  setup do
    @fachgruppe = fachgruppes(:one)
  end

  test "visiting the index" do
    visit fachgruppes_url
    assert_selector "h1", text: "Fachgruppes"
  end

  test "creating a Fachgruppe" do
    visit fachgruppes_url
    click_on "New Fachgruppe"

    fill_in "Bereitschaft", with: @fachgruppe.bereitschaft
    fill_in "Email", with: @fachgruppe.email
    fill_in "Name", with: @fachgruppe.name
    fill_in "Telefonnummer", with: @fachgruppe.telefonnummer
    fill_in "Ticketgruppe", with: @fachgruppe.ticketgruppe
    click_on "Create Fachgruppe"

    assert_text "Fachgruppe was successfully created"
    click_on "Back"
  end

  test "updating a Fachgruppe" do
    visit fachgruppes_url
    click_on "Edit", match: :first

    fill_in "Bereitschaft", with: @fachgruppe.bereitschaft
    fill_in "Email", with: @fachgruppe.email
    fill_in "Name", with: @fachgruppe.name
    fill_in "Telefonnummer", with: @fachgruppe.telefonnummer
    fill_in "Ticketgruppe", with: @fachgruppe.ticketgruppe
    click_on "Update Fachgruppe"

    assert_text "Fachgruppe was successfully updated"
    click_on "Back"
  end

  test "destroying a Fachgruppe" do
    visit fachgruppes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fachgruppe was successfully destroyed"
  end
end
