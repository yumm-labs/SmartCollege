require 'test_helper'

class CourseTest < ActiveSupport::TestCase

  should have_many :course_years
  should belong_to :department
  should belong_to :contact_person
  should belong_to :semester_pattern
  should belong_to :course_duration

  context "Test before create" do

    setup do
      @duration = course_durations(:course_duration_2)
      @semester_pattern = semester_patterns(:semester_pattern_2)
    end

    should "save with 2 years and 2 semesters" do
      course = Course.new( :name => 'name', :code => 'code', :course_duration => @duration, :semester_pattern => @semester_pattern )
      course.save

      years = course.course_years
      no_of_semesters = @semester_pattern.no_of_semesters

      assert_equal course.course_years.count, @duration.no_of_years
      assert_equal years[0].course_semesters.count, no_of_semesters
      assert_equal years[1].course_semesters.count, no_of_semesters
    end

  # should "save with 2 years and 2 semesters" do
  # course = Course.new( :name => 'name', :code => 'code', :course_duration => @duration, :semester_pattern => @semester_pattern )
  # course.save
  #
  # years = course.course_years
  # no_of_semesters = @semester_pattern.no_of_semesters
  #
  # assert_equal course.course_years.count, @duration.no_of_years
  # assert_equal years[0].course_semesters.count, no_of_semesters
  # assert_equal years[1].course_semesters.count, no_of_semesters
  # end

  end

end
