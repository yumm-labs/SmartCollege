class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :code
      t.text :description
      t.references :contact_person
      t.references :department

      t.timestamps
    end
    add_index :subjects, :contact_person_id
    add_index :subjects, :department_id
  end
end
