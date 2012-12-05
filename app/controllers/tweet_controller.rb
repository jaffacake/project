class TweetController < ApplicationController
  
  def list
    @tweets = Tweet.all
  end
  
  def index
    @tweets = Tweet.all
  end
  
  def show
    @tweets = Tweet.find_by_id(params[:id])
  end
  
  def new
    @tweet = Tweet.new(params[:tweet])
    if @tweets.save
      redirect_to :action => 'list'
    end
  end
  
  def create
    @tweets = Tweet.new(params[:tweet])
    if @tweets.save
      redirect_to :action => 'list'
    end
  end
  
  def edit
     @tweets = Tweet.find_by_id(params[:id])
  end
     
  def update
    @tweets = Tweet.find_by_id(params[:id])
    if @tweets.update_attributes(params[:tweet])
      redirect_to :action => 'show', :id => @tweets
    end
  end
  
  def delete
    Tweet.find_by_id(params[:id]).destroy
    redirect_to :action => 'list'
  end
  
end