class Institute < ActiveRecord::Base
  has_many :departments
  belongs_to :address
  belongs_to :contact_person

  validates :name, :presence => true
end