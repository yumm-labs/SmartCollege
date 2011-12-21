class CreateDepartmentStaffs < ActiveRecord::Migration
  def change
    create_table :department_staffs do |t|
      t.references :department
      t.references :staff
      t.references :designation

      t.timestamps
    end
    add_index :department_staffs, :department_id
    add_index :department_staffs, :staff_id
    add_index :department_staffs, :designation_id
  end
end
