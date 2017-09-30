class CreateTweets < ActiveRecord::Migration[5.1]
  def change
    create_table :tweets do |t|
      t.text :tweet_content

      t.timestamps
    end
  end
end
