class Subject < ActiveRecord::Base
  belongs_to :contact_person
  belongs_to :department
end
