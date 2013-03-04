class ContactDetail < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :address
  
  attr_accessible :id, :title, :first_name, :last_name, :landline_number, :mobile_number, :mobile_number_2, :fax_number, :email, :best_contact_time, :address_attributes
  
  accepts_nested_attributes_for :address, :allow_destroy => :true
end
