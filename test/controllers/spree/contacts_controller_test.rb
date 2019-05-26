require 'test_helper'

class Spree::ContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spree_contact = spree_contacts(:one)
  end

  test "should get index" do
    get spree_contacts_url
    assert_response :success
  end

  test "should get new" do
    get new_spree_contact_url
    assert_response :success
  end

  test "should create spree_contact" do
    assert_difference('Spree::Contact.count') do
      post spree_contacts_url, params: { spree_contact: { name: @spree_contact.name } }
    end

    assert_redirected_to spree_contact_url(Spree::Contact.last)
  end

  test "should show spree_contact" do
    get spree_contact_url(@spree_contact)
    assert_response :success
  end

  test "should get edit" do
    get edit_spree_contact_url(@spree_contact)
    assert_response :success
  end

  test "should update spree_contact" do
    patch spree_contact_url(@spree_contact), params: { spree_contact: { name: @spree_contact.name } }
    assert_redirected_to spree_contact_url(@spree_contact)
  end

  test "should destroy spree_contact" do
    assert_difference('Spree::Contact.count', -1) do
      delete spree_contact_url(@spree_contact)
    end

    assert_redirected_to spree_contacts_url
  end
end
