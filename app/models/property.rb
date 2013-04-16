class Property < ActiveRecord::Base
  
  belongs_to :address
  belongs_to :estate_agent
  belongs_to :property_style
  
  #has_many :landlords_has_properties
  
  has_and_belongs_to_many :landlord
  has_and_belongs_to_many :tenancy_agreement
  
  attr_accessible :landlord_attributes, :address_attributes, :estate_agent_attributes, 
  :property_style_attributes, :sector, :reference , :occupied, :available_date, :property_style_attributes, :property_style_id, 
  :price, :lease_price, :payment_type, :tenure, :use_class, :square_feet, :floors, :bedrooms, :reception_rooms, :bathrooms, 
  :upstairs_bathroom, :downstairs_bathroom, :wc, :upstairs_wc, :downstairs_wc, :keycode, :description, :price_old, :price_change_date, 
  :address_attributes, :landlord_attributes, :central_heating, :double_glazed, :front_garden, :back_garden, :drive_way, :furnished, :garage, :dss_accepted
  
  accepts_nested_attributes_for :landlord, :address, :estate_agent, :property_style, :tenancy_agreement
  
  validates_presence_of :property_style_id
end
