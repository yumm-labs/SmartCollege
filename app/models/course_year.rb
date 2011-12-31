class CourseYear < ActiveRecord::Base
  has_many :course_semesters
  belongs_to :course
end
