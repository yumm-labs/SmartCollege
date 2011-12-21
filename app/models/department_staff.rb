class DepartmentStaff < ActiveRecord::Base
  belongs_to :department
  belongs_to :staff
  belongs_to :designation
end
