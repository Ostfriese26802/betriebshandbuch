require "application_system_test_case"

class MonitoringzusksTest < ApplicationSystemTestCase
  setup do
    @monitoringzusk = monitoringzusks(:one)
  end

  test "visiting the index" do
    visit monitoringzusks_url
    assert_selector "h1", text: "Monitoringzusks"
  end

  test "creating a Monitoringzusk" do
    visit monitoringzusks_url
    click_on "New Monitoringzusk"

    fill_in "Komponente", with: @monitoringzusk.komponente_id
    fill_in "Monitoring", with: @monitoringzusk.monitoring_id
    fill_in "Server", with: @monitoringzusk.server_id
    fill_in "Werte", with: @monitoringzusk.werte
    click_on "Create Monitoringzusk"

    assert_text "Monitoringzusk was successfully created"
    click_on "Back"
  end

  test "updating a Monitoringzusk" do
    visit monitoringzusks_url
    click_on "Edit", match: :first

    fill_in "Komponente", with: @monitoringzusk.komponente_id
    fill_in "Monitoring", with: @monitoringzusk.monitoring_id
    fill_in "Server", with: @monitoringzusk.server_id
    fill_in "Werte", with: @monitoringzusk.werte
    click_on "Update Monitoringzusk"

    assert_text "Monitoringzusk was successfully updated"
    click_on "Back"
  end

  test "destroying a Monitoringzusk" do
    visit monitoringzusks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Monitoringzusk was successfully destroyed"
  end
end
