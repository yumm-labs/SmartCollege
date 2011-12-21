class CreateCourseSubjects < ActiveRecord::Migration
  def change
    create_table :course_subjects do |t|
      t.references :course
      t.references :subject
      t.integer :credits
      t.string :specific_code
      t.integer :year
      t.integer :semester
      t.references :staff
      t.references :subject_category

      t.timestamps
    end
    add_index :course_subjects, :course_id
    add_index :course_subjects, :subject_id
    add_index :course_subjects, :staff_id
    add_index :course_subjects, :subject_category_id
  end
end
