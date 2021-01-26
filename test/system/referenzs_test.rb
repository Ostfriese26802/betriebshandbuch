require "application_system_test_case"

class ReferenzsTest < ApplicationSystemTestCase
  setup do
    @referenz = referenzs(:one)
  end

  test "visiting the index" do
    visit referenzs_url
    assert_selector "h1", text: "Referenzs"
  end

  test "creating a Referenz" do
    visit referenzs_url
    click_on "New Referenz"

    fill_in "Applikation", with: @referenz.applikation_id
    fill_in "Link", with: @referenz.link
    fill_in "Name", with: @referenz.name
    click_on "Create Referenz"

    assert_text "Referenz was successfully created"
    click_on "Back"
  end

  test "updating a Referenz" do
    visit referenzs_url
    click_on "Edit", match: :first

    fill_in "Applikation", with: @referenz.applikation_id
    fill_in "Link", with: @referenz.link
    fill_in "Name", with: @referenz.name
    click_on "Update Referenz"

    assert_text "Referenz was successfully updated"
    click_on "Back"
  end

  test "destroying a Referenz" do
    visit referenzs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Referenz was successfully destroyed"
  end
end
