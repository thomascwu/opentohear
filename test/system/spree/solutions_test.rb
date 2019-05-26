require "application_system_test_case"

class Spree::SolutionsTest < ApplicationSystemTestCase
  setup do
    @spree_solution = spree_solutions(:one)
  end

  test "visiting the index" do
    visit spree_solutions_url
    assert_selector "h1", text: "Spree/Solutions"
  end

  test "creating a Solution" do
    visit spree_solutions_url
    click_on "New Spree/Solution"

    fill_in "Name", with: @spree_solution.name
    click_on "Create Solution"

    assert_text "Solution was successfully created"
    click_on "Back"
  end

  test "updating a Solution" do
    visit spree_solutions_url
    click_on "Edit", match: :first

    fill_in "Name", with: @spree_solution.name
    click_on "Update Solution"

    assert_text "Solution was successfully updated"
    click_on "Back"
  end

  test "destroying a Solution" do
    visit spree_solutions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Solution was successfully destroyed"
  end
end
