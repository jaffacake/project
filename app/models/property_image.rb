class PropertyImage < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :id, :image, :property_id, :name, :remote_image_url, :image_cache, :image_thumb
  belongs_to :property
   
  mount_uploader :image, ImageUploader
  
end
