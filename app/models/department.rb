class Department < ActiveRecord::Base
  has_many :courses
  has_many :subjects
  belongs_to :institute
  belongs_to :contact_person
end
