require 'test_helper'

class CourseSubjectsControllerTest < ActionController::TestCase
  setup do
    @course_subject = course_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_subject" do
    assert_difference('CourseSubject.count') do
      post :create, course_subject: @course_subject.attributes
    end

    assert_redirected_to course_subject_path(assigns(:course_subject))
  end

  test "should show course_subject" do
    get :show, id: @course_subject.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_subject.to_param
    assert_response :success
  end

  test "should update course_subject" do
    put :update, id: @course_subject.to_param, course_subject: @course_subject.attributes
    assert_redirected_to course_subject_path(assigns(:course_subject))
  end

  test "should destroy course_subject" do
    assert_difference('CourseSubject.count', -1) do
      delete :destroy, id: @course_subject.to_param
    end

    assert_redirected_to course_subjects_path
  end
end
