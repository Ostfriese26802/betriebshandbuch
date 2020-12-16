require "application_system_test_case"

class BetriebssystemsTest < ApplicationSystemTestCase
  setup do
    @betriebssystem = betriebssystems(:one)
  end

  test "visiting the index" do
    visit betriebssystems_url
    assert_selector "h1", text: "Betriebssystems"
  end

  test "creating a Betriebssystem" do
    visit betriebssystems_url
    click_on "New Betriebssystem"

    fill_in "Betriebssystemtyp", with: @betriebssystem.betriebssystemtyp_id
    fill_in "Name", with: @betriebssystem.name
    click_on "Create Betriebssystem"

    assert_text "Betriebssystem was successfully created"
    click_on "Back"
  end

  test "updating a Betriebssystem" do
    visit betriebssystems_url
    click_on "Edit", match: :first

    fill_in "Betriebssystemtyp", with: @betriebssystem.betriebssystemtyp_id
    fill_in "Name", with: @betriebssystem.name
    click_on "Update Betriebssystem"

    assert_text "Betriebssystem was successfully updated"
    click_on "Back"
  end

  test "destroying a Betriebssystem" do
    visit betriebssystems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Betriebssystem was successfully destroyed"
  end
end
