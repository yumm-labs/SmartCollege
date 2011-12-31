class CreateDepartmentStaffs < ActiveRecord::Migration
  def change
    create_table :department_staffs do |t|

      t.timestamps
    end
  end
end
