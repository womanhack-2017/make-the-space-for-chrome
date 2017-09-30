require 'csv'

Tweet.destroy_all 

csv_tweet_text = File.read(Rails.root.join('lib', 'seeds', 'tweet_1.csv'))

csv_tweet = CSV.parse(csv_tweet_text, :headers => true, :encoding => 'ISO-8859-1')

csv_tweet.each do |row|
  t = Tweet.new
  t.tweet_content = row['tweet_content']
  t.save!
  puts "#{t.tweet_content} saved"
end 

puts "There are now #{Tweet.count} rows in the Tweets table."