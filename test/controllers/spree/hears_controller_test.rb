require 'test_helper'

class Spree::HearsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spree_hear = spree_hears(:one)
  end

  test "should get index" do
    get spree_hears_url
    assert_response :success
  end

  test "should get new" do
    get new_spree_hear_url
    assert_response :success
  end

  test "should create spree_hear" do
    assert_difference('Spree::Hear.count') do
      post spree_hears_url, params: { spree_hear: { name: @spree_hear.name } }
    end

    assert_redirected_to spree_hear_url(Spree::Hear.last)
  end

  test "should show spree_hear" do
    get spree_hear_url(@spree_hear)
    assert_response :success
  end

  test "should get edit" do
    get edit_spree_hear_url(@spree_hear)
    assert_response :success
  end

  test "should update spree_hear" do
    patch spree_hear_url(@spree_hear), params: { spree_hear: { name: @spree_hear.name } }
    assert_redirected_to spree_hear_url(@spree_hear)
  end

  test "should destroy spree_hear" do
    assert_difference('Spree::Hear.count', -1) do
      delete spree_hear_url(@spree_hear)
    end

    assert_redirected_to spree_hears_url
  end
end
