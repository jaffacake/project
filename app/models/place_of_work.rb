class PlaceOfWork < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :contact_detail
  
  attr_accessible :contact_name, :company_name, :contact_detail_attributes
  
  accepts_nested_attributes_for :contact_detail
end
