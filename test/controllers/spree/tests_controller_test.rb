require 'test_helper'

class Spree::TestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spree_test = spree_tests(:one)
  end

  test "should get index" do
    get spree_tests_url
    assert_response :success
  end

  test "should get new" do
    get new_spree_test_url
    assert_response :success
  end

  test "should create spree_test" do
    assert_difference('Spree::Test.count') do
      post spree_tests_url, params: { spree_test: { name: @spree_test.name } }
    end

    assert_redirected_to spree_test_url(Spree::Test.last)
  end

  test "should show spree_test" do
    get spree_test_url(@spree_test)
    assert_response :success
  end

  test "should get edit" do
    get edit_spree_test_url(@spree_test)
    assert_response :success
  end

  test "should update spree_test" do
    patch spree_test_url(@spree_test), params: { spree_test: { name: @spree_test.name } }
    assert_redirected_to spree_test_url(@spree_test)
  end

  test "should destroy spree_test" do
    assert_difference('Spree::Test.count', -1) do
      delete spree_test_url(@spree_test)
    end

    assert_redirected_to spree_tests_url
  end
end
