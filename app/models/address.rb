class Address < ActiveRecord::Base
  # attr_accessible :title, :body
  
  attr_accessible :id, :address_line1, :address_line2, :address_town, :address_city, :address_postcode
  
  belongs_to :estate_agent
end
