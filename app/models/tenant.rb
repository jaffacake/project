class Tenant < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :property
  
  has_one :contact_detail
end
