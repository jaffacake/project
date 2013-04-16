class TenancyAgreement < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :tenant
  belongs_to :estate_agent
  
  attr_accessible :address_attributes, :estate_agent_attributes, :tenant_attributes, 
  :start_date, :end_date, :payment_date, :rental_price, :active, :rent_frequency
  
  accepts_nested_attributes_for :estate_agent, :tenant
  
  validates_inclusion_of :active, :in => [true, false]
end
