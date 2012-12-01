class User < ActiveRecord::Base
  attr_accessible :id, :name
 
  has_many :tweet

end