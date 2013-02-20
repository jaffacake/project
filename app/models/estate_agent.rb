class EstateAgent < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :address
  
  attr_accessible :id, :name, :license_expiry_date, :address_attributes
  
  accepts_nested_attributes_for :address, :allow_destroy => :true
 
end
