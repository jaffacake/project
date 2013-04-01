class Property < ActiveRecord::Base
  
  belongs_to :address
  belongs_to :estate_agent
  belongs_to :property_style
  
  #has_many :landlords_has_properties
  
  has_and_belongs_to_many :landlord
  has_many :tenant
  
  attr_accessible :landlord_attributes, :address_attributes, :estate_agent_attributes, :tenant_attributes, :property_style_attributes, :type, :available_date, 
  :price, :lease_price, :payment_type, :tenure, :use_class, :square_feet, :floors, :bedrooms, :reception_rooms, :bathrooms, :upstairs_bathroom, :downstairs_bathroom, :wc, :upstairs_wc, :downstairs_wc, 
  :keycode, :description, :price_old, :price_change_date, :address_attributes, :landlord_attributes, :central_heating, :double_glazed, :front_garden, :back_garden, :drive_way, :furnished, :garage, :dss_accepted
  
  accepts_nested_attributes_for :landlord, :address, :estate_agent, :tenant, :property_style
  
end
