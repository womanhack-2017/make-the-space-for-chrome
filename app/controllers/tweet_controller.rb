class TweetController < ApplicationController
  
  attr_reader: :tweet_parse_for_share

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

  def tweet_share_url
    url_end = @tweet.tweet_content.gsub(" ", "+")
    @complete_url = "https://twitter.com/intent/tweet?text=" + url_end
    @complete_url
  end 

end