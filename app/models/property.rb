class Property < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :address
  belongs_to :estate_agent
  
  has_many :landlord, :through => :landlords_has_properties
  has_many :tenant
  
  
  attr_accessible :landlord_attributes, :address_attributes, :estate_agent_attributes, :tenant_attributes
  
  accepts_nested_attributes_for :landlord, :address, :estate_agent, :tenant
end
