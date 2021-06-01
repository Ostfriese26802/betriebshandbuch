require "application_system_test_case"

class KomponententypsTest < ApplicationSystemTestCase
  setup do
    @komponententyp = komponententyps(:one)
  end

  test "visiting the index" do
    visit komponententyps_url
    assert_selector "h1", text: "Komponententyps"
  end

  test "creating a Komponententyp" do
    visit komponententyps_url
    click_on "New Komponententyp"

    fill_in "Name", with: @komponententyp.name
    click_on "Create Komponententyp"

    assert_text "Komponententyp was successfully created"
    click_on "Back"
  end

  test "updating a Komponententyp" do
    visit komponententyps_url
    click_on "Edit", match: :first

    fill_in "Name", with: @komponententyp.name
    click_on "Update Komponententyp"

    assert_text "Komponententyp was successfully updated"
    click_on "Back"
  end

  test "destroying a Komponententyp" do
    visit komponententyps_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Komponententyp was successfully destroyed"
  end
end
