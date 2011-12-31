class CreateCourseSemesters < ActiveRecord::Migration
  def change
    create_table :course_semesters do |t|
      t.integer :course_year_id
      t.integer :semester
      t.timestamps
    end
  end
end
