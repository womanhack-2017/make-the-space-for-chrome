class TweetController < ApplicationController
  def index
    @tweets = Tweet.all
    render json: @tweets
  end

  def show
    @tweet = Tweet.find_by(id: params[:id])
    render json: @tweet
  end
end
