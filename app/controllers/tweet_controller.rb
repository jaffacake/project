class TweetController < ApplicationController
  
  def list
    @tweets = Tweet.find(:all)
  end
  
  def index
    @tweets = Tweet.find(:all)
  end
  
  def show
    @tweets = Tweet.find(params[:id])
  end
  
  def new
    @tweets = Tweet.new
  end
  
  def create
    @tweets = Tweet.new(params[:tweet])
    if @tweets.save
      redirect_to :action => 'list'
    end
  end
  
  def edit
     @tweets = Tweet.find(params[:id])
  end
     
  def update
    @tweets = Tweet.find(params[:id])
    if @tweets.update_attributes(params[:tweet])
      redirect_to :action => 'show', :id => @tweets
    end
  end
  
  def delete
    Tweet.find(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
end