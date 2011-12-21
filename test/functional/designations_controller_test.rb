require 'test_helper'

class DesignationsControllerTest < ActionController::TestCase
  setup do
    @designation = designations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:designations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create designation" do
    assert_difference('Designation.count') do
      post :create, designation: @designation.attributes
    end

    assert_redirected_to designation_path(assigns(:designation))
  end

  test "should show designation" do
    get :show, id: @designation.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @designation.to_param
    assert_response :success
  end

  test "should update designation" do
    put :update, id: @designation.to_param, designation: @designation.attributes
    assert_redirected_to designation_path(assigns(:designation))
  end

  test "should destroy designation" do
    assert_difference('Designation.count', -1) do
      delete :destroy, id: @designation.to_param
    end

    assert_redirected_to designations_path
  end
end
