class CourseSubject < ActiveRecord::Base
  belongs_to :course
  belongs_to :subject
  belongs_to :subject_category
end
