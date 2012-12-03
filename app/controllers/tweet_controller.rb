class TweetController < ApplicationController
  def list
    @tweets = Tweet.find(:all)
  end
end