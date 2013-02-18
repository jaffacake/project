class EstateAgent < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :addresses
  
  attr_accessible :id, :estate_agent, :license_expiry_date, :address
  
  accepts_nested_attributes_for :addresses, :allow_destroy => :true,
  
end
