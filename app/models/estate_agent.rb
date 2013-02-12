class EstateAgent < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :address
  
  
end
