class Course < ActiveRecord::Base
  has_many :course_years
  belongs_to :department
  belongs_to :contact_person
  belongs_to :semester_pattern
  belongs_to :course_duration

  delegate :no_of_years, :to => :course_duration
  delegate :no_of_semesters, :to => :semester_pattern

  before_create do |course|

    course.no_of_years.to_i.times do |count|
      course_year = course.course_years.build( :year => count + 1 )
      create_semesters( course_year )
    end

  end

  def create_semesters( course_year )
    self.no_of_semesters.to_i.times do |count|
      course_year.course_semesters.build( :semester => count + 1 )
    end
  end

end
