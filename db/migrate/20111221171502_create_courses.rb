class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :code
      t.text :description
      t.integer :no_of_years
      t.references :contact_person

      t.timestamps
    end
    add_index :courses, :contact_person_id
  end
end
