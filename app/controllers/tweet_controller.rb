class TweetController < ApplicationController
  def list
    @tweets = Tweet.find(:all)
  end
  
  def index
    @tweets = Tweet.find(:all)
  end
end