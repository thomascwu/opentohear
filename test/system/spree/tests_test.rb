require "application_system_test_case"

class Spree::TestsTest < ApplicationSystemTestCase
  setup do
    @spree_test = spree_tests(:one)
  end

  test "visiting the index" do
    visit spree_tests_url
    assert_selector "h1", text: "Spree/Tests"
  end

  test "creating a Test" do
    visit spree_tests_url
    click_on "New Spree/Test"

    fill_in "Name", with: @spree_test.name
    click_on "Create Test"

    assert_text "Test was successfully created"
    click_on "Back"
  end

  test "updating a Test" do
    visit spree_tests_url
    click_on "Edit", match: :first

    fill_in "Name", with: @spree_test.name
    click_on "Update Test"

    assert_text "Test was successfully updated"
    click_on "Back"
  end

  test "destroying a Test" do
    visit spree_tests_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Test was successfully destroyed"
  end
end
