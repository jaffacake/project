class Tweet < ActiveRecord::Base
  attr_accessible :id, :tweet, :user
 
  validates :tweet,  :presence => true
  
  belongs_to :user

end