require 'csv'

# clear database
Apply.destroy_all
Develop.destroy_all
Donate.destroy_all
Evolve.destroy_all
Think.destroy_all
Tweet.destroy_all 

#populate apply table 
csv_apply_file = File.read(Rails.root.join('lib', 'seeds', 'apply_1.csv'))

csv_apply = CSV.parse(csv_apply_file, :headers => true, :encoding => 'ISO-8859-1')

csv_apply.each do |row|
  a = Apply.new 
  a.name = row['name']
  a.description = row['description']
  a.URL = row['URL']
  a.save!
  puts "Job resource is #{a.name}"
  puts "#{a.description}"
  puts "Link here: #{a.URL}"
end 
puts "There are now #{Apply.count} rows in the Develop database table."

#populate develop table
csv_develop_file = File.read(Rails.root.join('lib', 'seeds', 'develop_1.csv'))

csv_develop = CSV.parse(csv_develop_file, :headers => true, :encoding => 'ISO-8859-1')

csv_develop.each do |row|
  d = Develop.new 
  d.name = row['name']
  d.description = row['description']
  d.URL = row['webaddress']
  d.save!
end 

#populate donate table
csv_donate_file = File.read(Rails.root.join('lib', 'seeds', 'donate_1.csv'))

csv_donate = CSV.parse(csv_donate_file, :headers => true, :encoding => 'ISO-8859-1')

csv_donate.each do |row|
  d = Donate.new 
  d.org_name = row['org_name']
  d.description = row['description']
  d.URL = row['link']
  d.save!
end 


#populate evolve table
csv_evolve_file = File.read(Rails.root.join('lib', 'seeds', 'evolve_1.csv'))

csv_evolve = CSV.parse(csv_evolve_file, :headers => true, :encoding => 'ISO-8859-1')

csv_evolve.each do |row|
  e = Evolve.new 
  e.action = row['action']
  e.save!
end 

#populate think table
csv_think_file = File.read(Rails.root.join('lib', 'seeds', 'think_1.csv'))

csv_think = CSV.parse(csv_think_file, :headers => true, :encoding => 'ISO-8859-1')

csv_think.each do |row|
  t = Think.new 
  t.title = row['title']
  t.author = row['author']
  t.source = row['source']
  t.URL = row['URL']
  t.save!
end 


# populate tweet table
csv_tweet_text = File.read(Rails.root.join('lib', 'seeds', 'tweet_1.csv'))

csv_tweet = CSV.parse(csv_tweet_text, :headers => true, :encoding => 'ISO-8859-1')

csv_tweet.each do |row|
  t = Tweet.new
  t.tweet_content = row['tweet_content']
  t.save!
end 