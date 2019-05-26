require 'test_helper'

class Spree::AboutsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spree_about = spree_abouts(:one)
  end

  test "should get index" do
    get spree_abouts_url
    assert_response :success
  end

  test "should get new" do
    get new_spree_about_url
    assert_response :success
  end

  test "should create spree_about" do
    assert_difference('Spree::About.count') do
      post spree_abouts_url, params: { spree_about: { name: @spree_about.name } }
    end

    assert_redirected_to spree_about_url(Spree::About.last)
  end

  test "should show spree_about" do
    get spree_about_url(@spree_about)
    assert_response :success
  end

  test "should get edit" do
    get edit_spree_about_url(@spree_about)
    assert_response :success
  end

  test "should update spree_about" do
    patch spree_about_url(@spree_about), params: { spree_about: { name: @spree_about.name } }
    assert_redirected_to spree_about_url(@spree_about)
  end

  test "should destroy spree_about" do
    assert_difference('Spree::About.count', -1) do
      delete spree_about_url(@spree_about)
    end

    assert_redirected_to spree_abouts_url
  end
end
