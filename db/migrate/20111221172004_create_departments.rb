class CreateDepartments < ActiveRecord::Migration
  def change
    create_table :departments do |t|
      t.string :name
      t.string :code
      t.text :description
      t.references :contact_person
      t.string :email
      t.string :phone

      t.timestamps
    end
    add_index :departments, :contact_person_id
  end
end
