class TweetController < ApplicationController
  def index
    @tweets = Tweet.find(:all)
  end
end