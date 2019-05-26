require "application_system_test_case"

class Spree::WorksTest < ApplicationSystemTestCase
  setup do
    @spree_work = spree_works(:one)
  end

  test "visiting the index" do
    visit spree_works_url
    assert_selector "h1", text: "Spree/Works"
  end

  test "creating a Work" do
    visit spree_works_url
    click_on "New Spree/Work"

    fill_in "Name", with: @spree_work.name
    click_on "Create Work"

    assert_text "Work was successfully created"
    click_on "Back"
  end

  test "updating a Work" do
    visit spree_works_url
    click_on "Edit", match: :first

    fill_in "Name", with: @spree_work.name
    click_on "Update Work"

    assert_text "Work was successfully updated"
    click_on "Back"
  end

  test "destroying a Work" do
    visit spree_works_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Work was successfully destroyed"
  end
end
