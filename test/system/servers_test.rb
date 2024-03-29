require "application_system_test_case"

class ServersTest < ApplicationSystemTestCase
  setup do
    @server = servers(:one)
  end

  test "visiting the index" do
    visit servers_url
    assert_selector "h1", text: "Servers"
  end

  test "creating a Server" do
    visit servers_url
    click_on "New Server"

    check "Archiviert" if @server.archiviert
    fill_in "Betriebssystem", with: @server.betriebssystem_id
    fill_in "Ip", with: @server.ip
    fill_in "Kunde", with: @server.kunde_id
    fill_in "Name", with: @server.name
    click_on "Create Server"

    assert_text "Server was successfully created"
    click_on "Back"
  end

  test "updating a Server" do
    visit servers_url
    click_on "Edit", match: :first

    check "Archiviert" if @server.archiviert
    fill_in "Betriebssystem", with: @server.betriebssystem_id
    fill_in "Ip", with: @server.ip
    fill_in "Kunde", with: @server.kunde_id
    fill_in "Name", with: @server.name
    click_on "Update Server"

    assert_text "Server was successfully updated"
    click_on "Back"
  end

  test "destroying a Server" do
    visit servers_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Server was successfully destroyed"
  end
end
