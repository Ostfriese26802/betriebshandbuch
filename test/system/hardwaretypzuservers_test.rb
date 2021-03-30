require "application_system_test_case"

class HardwaretypzuserversTest < ApplicationSystemTestCase
  setup do
    @hardwaretypzuserver = hardwaretypzuservers(:one)
  end

  test "visiting the index" do
    visit hardwaretypzuservers_url
    assert_selector "h1", text: "Hardwaretypzuservers"
  end

  test "creating a Hardwaretypzuserver" do
    visit hardwaretypzuservers_url
    click_on "New Hardwaretypzuserver"

    fill_in "Hardwaretyp", with: @hardwaretypzuserver.hardwaretyp_id
    fill_in "Server", with: @hardwaretypzuserver.server_id
    fill_in "Wert", with: @hardwaretypzuserver.wert
    click_on "Create Hardwaretypzuserver"

    assert_text "Hardwaretypzuserver was successfully created"
    click_on "Back"
  end

  test "updating a Hardwaretypzuserver" do
    visit hardwaretypzuservers_url
    click_on "Edit", match: :first

    fill_in "Hardwaretyp", with: @hardwaretypzuserver.hardwaretyp_id
    fill_in "Server", with: @hardwaretypzuserver.server_id
    fill_in "Wert", with: @hardwaretypzuserver.wert
    click_on "Update Hardwaretypzuserver"

    assert_text "Hardwaretypzuserver was successfully updated"
    click_on "Back"
  end

  test "destroying a Hardwaretypzuserver" do
    visit hardwaretypzuservers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hardwaretypzuserver was successfully destroyed"
  end
end
