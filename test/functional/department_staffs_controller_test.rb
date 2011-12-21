require 'test_helper'

class DepartmentStaffsControllerTest < ActionController::TestCase
  setup do
    @department_staff = department_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:department_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create department_staff" do
    assert_difference('DepartmentStaff.count') do
      post :create, department_staff: @department_staff.attributes
    end

    assert_redirected_to department_staff_path(assigns(:department_staff))
  end

  test "should show department_staff" do
    get :show, id: @department_staff.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @department_staff.to_param
    assert_response :success
  end

  test "should update department_staff" do
    put :update, id: @department_staff.to_param, department_staff: @department_staff.attributes
    assert_redirected_to department_staff_path(assigns(:department_staff))
  end

  test "should destroy department_staff" do
    assert_difference('DepartmentStaff.count', -1) do
      delete :destroy, id: @department_staff.to_param
    end

    assert_redirected_to department_staffs_path
  end
end
