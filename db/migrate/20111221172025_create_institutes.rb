class CreateInstitutes < ActiveRecord::Migration
  def change
    create_table :institutes do |t|
      t.string :name
      t.string :code
      t.text :description
      t.string :grade
      t.text :caption
      t.string :logo
      t.references :address
      t.references :contact_person
      t.string :email
      t.string :phone

      t.timestamps
    end
    add_index :institutes, :address_id
    add_index :institutes, :contact_person_id
  end
end
