require "application_system_test_case"

class HardwaretypsTest < ApplicationSystemTestCase
  setup do
    @hardwaretyp = hardwaretyps(:one)
  end

  test "visiting the index" do
    visit hardwaretyps_url
    assert_selector "h1", text: "Hardwaretyps"
  end

  test "creating a Hardwaretyp" do
    visit hardwaretyps_url
    click_on "New Hardwaretyp"

    fill_in "Name", with: @hardwaretyp.name
    click_on "Create Hardwaretyp"

    assert_text "Hardwaretyp was successfully created"
    click_on "Back"
  end

  test "updating a Hardwaretyp" do
    visit hardwaretyps_url
    click_on "Edit", match: :first

    fill_in "Name", with: @hardwaretyp.name
    click_on "Update Hardwaretyp"

    assert_text "Hardwaretyp was successfully updated"
    click_on "Back"
  end

  test "destroying a Hardwaretyp" do
    visit hardwaretyps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hardwaretyp was successfully destroyed"
  end
end
