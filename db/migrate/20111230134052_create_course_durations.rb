class CreateCourseDurations < ActiveRecord::Migration
  def change
    create_table :course_durations do |t|
      t.string :name
      t.integer :no_of_years
      t.integer :description

      t.timestamps
    end
  end
end
