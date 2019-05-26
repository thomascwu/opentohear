require "application_system_test_case"

class Spree::HearsTest < ApplicationSystemTestCase
  setup do
    @spree_hear = spree_hears(:one)
  end

  test "visiting the index" do
    visit spree_hears_url
    assert_selector "h1", text: "Spree/Hears"
  end

  test "creating a Hear" do
    visit spree_hears_url
    click_on "New Spree/Hear"

    fill_in "Name", with: @spree_hear.name
    click_on "Create Hear"

    assert_text "Hear was successfully created"
    click_on "Back"
  end

  test "updating a Hear" do
    visit spree_hears_url
    click_on "Edit", match: :first

    fill_in "Name", with: @spree_hear.name
    click_on "Update Hear"

    assert_text "Hear was successfully updated"
    click_on "Back"
  end

  test "destroying a Hear" do
    visit spree_hears_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hear was successfully destroyed"
  end
end
