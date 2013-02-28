class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :username, :email, :password, :password_confirmation, :remember_me, :estate_agent_id, :address_attributes, :estate_agent_attributes, :address, :admin
  
  
  belongs_to :address
  belongs_to :estate_agent
  
  validates_presence_of :username, :on => :create, :message => "can't be blank"
  accepts_nested_attributes_for :address, :allow_destroy => :true
 
end
