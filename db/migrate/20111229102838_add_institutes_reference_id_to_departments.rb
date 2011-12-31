class AddInstitutesReferenceIdToDepartments < ActiveRecord::Migration
  def change
    add_column :departments, :institute_id, :integer
  end
end
