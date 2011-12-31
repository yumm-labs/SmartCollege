class CreateSemesterPatterns < ActiveRecord::Migration
  def change
    create_table :semester_patterns do |t|
      t.string :name
      t.integer :no_of_semesters
      t.integer :description

      t.timestamps
    end
  end
end
