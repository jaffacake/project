class UsersController < ApplicationController
  before_filter :authenticate_user!
  
  def list
    @users = User.all
  end
  
  def index
    @users = User.all
  end
  
  def show
    @users = User.find_by_id(params[:id])
  end
  
  def new
    @users = User.new
  end
  
  def create
    @users = User.new(params[:user])
    if @users.save
      redirect_to :action => 'list'
    end
  end
  
  def edit
     @users = User.find_by_id(params[:id])
  end
     
  def update
    @users = User.find_by_id(params[:id])
    if @users.update_attributes(params[:user])
      redirect_to :action => 'show', :id => @users
    end
  end
  
  def delete
    User.find_by_id(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
end