class EstateAgent < ActiveRecord::Base
  extend FriendlyId
  
  friendly_id :name, use: :slugged
  # attr_accessible :title, :body
  belongs_to :contact_detail
  has_many :user
  has_many :property
  
  has_many :estate_agents_images
  
  attr_accessible :id, :name, :license_expiry_date, :contact_detail_attributes, :user_attributes, :property_attributes, :estate_agents_images_attributes
  
  accepts_nested_attributes_for :user, :contact_detail, :estate_agents_images,:allow_destroy => :true
 
end
