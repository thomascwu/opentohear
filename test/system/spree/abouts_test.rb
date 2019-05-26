require "application_system_test_case"

class Spree::AboutsTest < ApplicationSystemTestCase
  setup do
    @spree_about = spree_abouts(:one)
  end

  test "visiting the index" do
    visit spree_abouts_url
    assert_selector "h1", text: "Spree/Abouts"
  end

  test "creating a About" do
    visit spree_abouts_url
    click_on "New Spree/About"

    fill_in "Name", with: @spree_about.name
    click_on "Create About"

    assert_text "About was successfully created"
    click_on "Back"
  end

  test "updating a About" do
    visit spree_abouts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @spree_about.name
    click_on "Update About"

    assert_text "About was successfully updated"
    click_on "Back"
  end

  test "destroying a About" do
    visit spree_abouts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "About was successfully destroyed"
  end
end
