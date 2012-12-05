class Tweet < ActiveRecord::Base
  attr_accessible :id, :tweet, :userId
 
  validates :tweet,  :presence => true
  
  belongs_to :user

end