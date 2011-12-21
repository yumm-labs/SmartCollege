class Institute < ActiveRecord::Base
  belongs_to :address
  belongs_to :contact_person
end
