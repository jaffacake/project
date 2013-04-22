class Tenant < ActiveRecord::Base
  # attr_accessible :title, :body
  has_and_belongs_to_many :tenancy_agreements
  
  belongs_to :contact_detail
  
  belongs_to :place_of_work
  
  attr_accessible :contact_detail_attributes, :place_of_work_attributes, :estate_agent_id
  
  accepts_nested_attributes_for :contact_detail, :place_of_work
end
