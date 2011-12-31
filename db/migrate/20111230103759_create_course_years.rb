class CreateCourseYears < ActiveRecord::Migration
  def change
    create_table :course_years do |t|
      t.references :course
      t.integer :year

      t.timestamps
    end
    add_index :course_years, :course_id
  end
end
