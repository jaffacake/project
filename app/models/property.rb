class Property < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :address
  has_many :landlords, :through => :landlords_has_properties
  has_many :tenants
  
end
