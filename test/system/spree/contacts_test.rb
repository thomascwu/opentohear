require "application_system_test_case"

class Spree::ContactsTest < ApplicationSystemTestCase
  setup do
    @spree_contact = spree_contacts(:one)
  end

  test "visiting the index" do
    visit spree_contacts_url
    assert_selector "h1", text: "Spree/Contacts"
  end

  test "creating a Contact" do
    visit spree_contacts_url
    click_on "New Spree/Contact"

    fill_in "Name", with: @spree_contact.name
    click_on "Create Contact"

    assert_text "Contact was successfully created"
    click_on "Back"
  end

  test "updating a Contact" do
    visit spree_contacts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @spree_contact.name
    click_on "Update Contact"

    assert_text "Contact was successfully updated"
    click_on "Back"
  end

  test "destroying a Contact" do
    visit spree_contacts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Contact was successfully destroyed"
  end
end
