class Property < ActiveRecord::Base
  
  belongs_to :address
  belongs_to :estate_agent
  belongs_to :property_style
  
  has_and_belongs_to_many :landlords
  #has_and_belongs_to_many :tenancy_agreements
  
  has_many :property_images
  
  #after_create :create_landlord
  
  attr_accessible :landlords_attributes, :property_images_attributes, :address_attributes, :estate_agent_attributes, 
  :property_style_attributes, :sector, :reference , :occupied, :available_date, :property_style_attributes, :property_style_id, 
  :price, :lease_price, :payment_type, :tenure, :use_class, :square_feet, :floors, :bedrooms, :reception_rooms, :bathrooms, 
  :upstairs_bathroom, :downstairs_bathroom, :wc, :upstairs_wc, :downstairs_wc, :keycode, :description, :price_old, :price_change_date, 
  :central_heating, :double_glazed, :front_garden, :back_garden, :drive_way, :furnished, :garage, :dss_accepted
  
  accepts_nested_attributes_for :landlords, :address, :estate_agent, :property_style#, :tenancy_agreements
  
  validates_presence_of :property_style_id
end
