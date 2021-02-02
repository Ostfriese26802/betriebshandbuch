require "application_system_test_case"

class MonitoringsTest < ApplicationSystemTestCase
  setup do
    @monitoring = monitorings(:one)
  end

  test "visiting the index" do
    visit monitorings_url
    assert_selector "h1", text: "Monitorings"
  end

  test "creating a Monitoring" do
    visit monitorings_url
    click_on "New Monitoring"

    fill_in "Beschreibung", with: @monitoring.beschreibung
    fill_in "Name", with: @monitoring.name
    fill_in "Werte", with: @monitoring.werte
    click_on "Create Monitoring"

    assert_text "Monitoring was successfully created"
    click_on "Back"
  end

  test "updating a Monitoring" do
    visit monitorings_url
    click_on "Edit", match: :first

    fill_in "Beschreibung", with: @monitoring.beschreibung
    fill_in "Name", with: @monitoring.name
    fill_in "Werte", with: @monitoring.werte
    click_on "Update Monitoring"

    assert_text "Monitoring was successfully updated"
    click_on "Back"
  end

  test "destroying a Monitoring" do
    visit monitorings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monitoring was successfully destroyed"
  end
end
