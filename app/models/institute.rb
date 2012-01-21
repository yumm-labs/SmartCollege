class Institute < ActiveRecord::Base
  has_many :departments
  has_one :address, :as => :addressable
  belongs_to :contact_person, :class_name => 'Staff'

  validates :name, :presence => true

  after_update :save_address

  def address_attrs=(attrs)
    if self.new_record?
      self.build_address( attrs )
    else
      self.address || self.build_address
      self.address.attributes = attrs
    end
  end
  
  def save_address
    self.address.save
  end

end