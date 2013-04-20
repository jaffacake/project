class EstateAgentsImage < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :id, :image, :estate_agent_id, :name, :remote_image_url, :image_cache, :image_thumb
  belongs_to :estate_agent
   
  mount_uploader :image, ImageUploader
  
end
