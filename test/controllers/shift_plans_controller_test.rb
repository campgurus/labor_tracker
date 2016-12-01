require 'test_helper'

class ShiftPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shift_plan = shift_plans(:one)
  end

  test "should get index" do
    get shift_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_shift_plan_url
    assert_response :success
  end

  test "should create shift_plan" do
    assert_difference('ShiftPlan.count') do
      post shift_plans_url, params: { shift_plan: { name: @shift_plan.name } }
    end

    assert_redirected_to shift_plan_url(ShiftPlan.last)
  end

  test "should show shift_plan" do
    get shift_plan_url(@shift_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_shift_plan_url(@shift_plan)
    assert_response :success
  end

  test "should update shift_plan" do
    patch shift_plan_url(@shift_plan), params: { shift_plan: { name: @shift_plan.name } }
    assert_redirected_to shift_plan_url(@shift_plan)
  end

  test "should destroy shift_plan" do
    assert_difference('ShiftPlan.count', -1) do
      delete shift_plan_url(@shift_plan)
    end

    assert_redirected_to shift_plans_url
  end
end
