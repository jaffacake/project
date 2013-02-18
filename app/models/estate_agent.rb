class EstateAgent < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :address
  
  attr_accessible :id, :name, :license_expiry_date, :address
  
  accepts_nested_attributes_for :address, :allow_destroy => :true,
 
end
