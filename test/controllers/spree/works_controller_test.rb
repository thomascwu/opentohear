require 'test_helper'

class Spree::WorksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spree_work = spree_works(:one)
  end

  test "should get index" do
    get spree_works_url
    assert_response :success
  end

  test "should get new" do
    get new_spree_work_url
    assert_response :success
  end

  test "should create spree_work" do
    assert_difference('Spree::Work.count') do
      post spree_works_url, params: { spree_work: { name: @spree_work.name } }
    end

    assert_redirected_to spree_work_url(Spree::Work.last)
  end

  test "should show spree_work" do
    get spree_work_url(@spree_work)
    assert_response :success
  end

  test "should get edit" do
    get edit_spree_work_url(@spree_work)
    assert_response :success
  end

  test "should update spree_work" do
    patch spree_work_url(@spree_work), params: { spree_work: { name: @spree_work.name } }
    assert_redirected_to spree_work_url(@spree_work)
  end

  test "should destroy spree_work" do
    assert_difference('Spree::Work.count', -1) do
      delete spree_work_url(@spree_work)
    end

    assert_redirected_to spree_works_url
  end
end
