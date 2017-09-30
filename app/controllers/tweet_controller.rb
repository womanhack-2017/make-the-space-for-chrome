class TweetController < ApplicationController
  def index
    # @tweets = Tweet.all
    # render json: @tweets

    @tweet = Tweet.all.sample
    render json: @tweet
  end

  def show
    @tweet = Tweet.find(params[:id])
    render json: @tweet
  end
end
