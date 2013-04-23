class TenancyAgreement < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :tenants
  has_and_belongs_to_many :properties
  
  belongs_to :estate_agent
  
  
  attr_accessible :estate_agent_attributes, :tenants_attributes, :start_date, :end_date, :payment_date, :rental_price, :active, :rent_frequency
  
  accepts_nested_attributes_for :estate_agent, :tenants
  
end
