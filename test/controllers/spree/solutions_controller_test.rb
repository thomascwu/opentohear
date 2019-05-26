require 'test_helper'

class Spree::SolutionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @spree_solution = spree_solutions(:one)
  end

  test "should get index" do
    get spree_solutions_url
    assert_response :success
  end

  test "should get new" do
    get new_spree_solution_url
    assert_response :success
  end

  test "should create spree_solution" do
    assert_difference('Spree::Solution.count') do
      post spree_solutions_url, params: { spree_solution: { name: @spree_solution.name } }
    end

    assert_redirected_to spree_solution_url(Spree::Solution.last)
  end

  test "should show spree_solution" do
    get spree_solution_url(@spree_solution)
    assert_response :success
  end

  test "should get edit" do
    get edit_spree_solution_url(@spree_solution)
    assert_response :success
  end

  test "should update spree_solution" do
    patch spree_solution_url(@spree_solution), params: { spree_solution: { name: @spree_solution.name } }
    assert_redirected_to spree_solution_url(@spree_solution)
  end

  test "should destroy spree_solution" do
    assert_difference('Spree::Solution.count', -1) do
      delete spree_solution_url(@spree_solution)
    end

    assert_redirected_to spree_solutions_url
  end
end
