require "application_system_test_case"

class ColidsTest < ApplicationSystemTestCase
  setup do
    @colid = colids(:one)
  end

  test "visiting the index" do
    visit colids_url
    assert_selector "h1", text: "Colids"
  end

  test "creating a Colid" do
    visit colids_url
    click_on "New Colid"

    fill_in "Email", with: @colid.email
    fill_in "Location", with: @colid.location
    fill_in "Name", with: @colid.name
    fill_in "Phone", with: @colid.phone
    fill_in "Staff", with: @colid.staff
    click_on "Create Colid"

    assert_text "Colid was successfully created"
    click_on "Back"
  end

  test "updating a Colid" do
    visit colids_url
    click_on "Edit", match: :first

    fill_in "Email", with: @colid.email
    fill_in "Location", with: @colid.location
    fill_in "Name", with: @colid.name
    fill_in "Phone", with: @colid.phone
    fill_in "Staff", with: @colid.staff
    click_on "Update Colid"

    assert_text "Colid was successfully updated"
    click_on "Back"
  end

  test "destroying a Colid" do
    visit colids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Colid was successfully destroyed"
  end
end
