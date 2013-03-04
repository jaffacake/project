class Tenant < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :property
  
  belongs_to :contact_detail
  belongs_to :place_of_work
  
  attr_accessible :property_attributes, :contact_detail_attributes, :place_of_work_attributes
  
  accepts_nested_attributes_for :property, :contact_detail, :place_of_work
end
