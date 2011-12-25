class Institute < ActiveRecord::Base
  belongs_to :address
  belongs_to :contact_person

  validates :name, :presence => true
end
