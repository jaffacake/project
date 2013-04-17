class Landlord < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :contact_detail
  
 # has_many :property, :through => :landlords_has_properties
  has_and_belongs_to_many :properties
  
  attr_accessible :contact_detail_attributes, :estate_agent_id
  
  accepts_nested_attributes_for :contact_detail
  
end
