class Landlord < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :contact_detail
  
  has_many :property, :through => :landlords_has_properties
  
  attr_accessible :contact_detail_attributes
  
  accepts_nested_attributes_for :contact_detail
  
end
