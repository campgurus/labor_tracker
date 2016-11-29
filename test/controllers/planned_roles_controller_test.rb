require 'test_helper'

class PlannedRolesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planned_role = planned_roles(:one)
  end

  test "should get index" do
    get planned_roles_url
    assert_response :success
  end

  test "should get new" do
    get new_planned_role_url
    assert_response :success
  end

  test "should create planned_role" do
    assert_difference('PlannedRole.count') do
      post planned_roles_url, params: { planned_role: { associate_id: @planned_role.associate_id, role_id: @planned_role.role_id } }
    end

    assert_redirected_to planned_role_url(PlannedRole.last)
  end

  test "should show planned_role" do
    get planned_role_url(@planned_role)
    assert_response :success
  end

  test "should get edit" do
    get edit_planned_role_url(@planned_role)
    assert_response :success
  end

  test "should update planned_role" do
    patch planned_role_url(@planned_role), params: { planned_role: { associate_id: @planned_role.associate_id, role_id: @planned_role.role_id } }
    assert_redirected_to planned_role_url(@planned_role)
  end

  test "should destroy planned_role" do
    assert_difference('PlannedRole.count', -1) do
      delete planned_role_url(@planned_role)
    end

    assert_redirected_to planned_roles_url
  end
end
