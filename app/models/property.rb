class Property < ActiveRecord::Base
  # attr_accessible :title, :body
  
  belongs_to :address
  has_many :landlords, :through => :appointments
  has_many :tenants
  
end
