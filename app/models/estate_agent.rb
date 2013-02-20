class EstateAgent < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :address
  has_many :user
  
  attr_accessible :id, :name, :license_expiry_date, :address_attributes, :user_attributes
  
  accepts_nested_attributes_for :user, :address, :allow_destroy => :true
 
end
