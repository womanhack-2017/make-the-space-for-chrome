class AddShareTweetToTweet < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :share_tweet, :string
  end
end
