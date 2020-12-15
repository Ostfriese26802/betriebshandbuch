require "application_system_test_case"

class BetriebssystemtypsTest < ApplicationSystemTestCase
  setup do
    @betriebssystemtyp = betriebssystemtyps(:one)
  end

  test "visiting the index" do
    visit betriebssystemtyps_url
    assert_selector "h1", text: "Betriebssystemtyps"
  end

  test "creating a Betriebssystemtyp" do
    visit betriebssystemtyps_url
    click_on "New Betriebssystemtyp"

    fill_in "Name", with: @betriebssystemtyp.name
    click_on "Create Betriebssystemtyp"

    assert_text "Betriebssystemtyp was successfully created"
    click_on "Back"
  end

  test "updating a Betriebssystemtyp" do
    visit betriebssystemtyps_url
    click_on "Edit", match: :first

    fill_in "Name", with: @betriebssystemtyp.name
    click_on "Update Betriebssystemtyp"

    assert_text "Betriebssystemtyp was successfully updated"
    click_on "Back"
  end

  test "destroying a Betriebssystemtyp" do
    visit betriebssystemtyps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Betriebssystemtyp was successfully destroyed"
  end
end
