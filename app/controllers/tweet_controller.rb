class HomeController < ApplicationController
  def index
    @tweets = Tweet.find(:all)
  end
end