class AddSemesterPatternIdToCourses < ActiveRecord::Migration
  def up
    add_column :courses, :semester_pattern_id, :integer
    remove_column :courses, :no_of_years
    add_column :courses, :course_duration_id, :integer  
  end
  
  def down
    remove_column :courses, :semester_pattern_id
    add_column :courses, :no_of_years, :integer
    remove_column :courses, :course_duration_id  
  end
  
end
