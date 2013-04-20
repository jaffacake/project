class EstateAgent < ActiveRecord::Base
  extend FriendlyId
  
  friendly_id :name, use: :slugged
  # attr_accessible :title, :body
  belongs_to :address
  has_many :user
  has_many :property
  
  attr_accessible :id, :name, :license_expiry_date, :address_attributes, :user_attributes, :property_attributes
  
  accepts_nested_attributes_for :user, :address, :allow_destroy => :true
 
end
