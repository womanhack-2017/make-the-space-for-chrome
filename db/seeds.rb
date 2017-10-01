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
end

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
csv_tweet_text = File.read(Rails.root.join('lib', 'seeds', 'tweet_530.csv'))

csv_tweet = CSV.parse(csv_tweet_text, :headers => true, :encoding => 'ISO-8859-1')

csv_tweet.each do |row|
  t = Tweet.new
  t.tweet_content = row['tweet_content']
  t.share_tweet = row['share_tweet']
  t.save!
end

Connect.create!({
  title: "Tech Training for Chinese Women",
  description: "WHOmentors.com, Inc. offers tech training for Chinese women to remove significant barriers to their full and effective participation in apprenticeable occupations and nontraditional occupations (tech).",
  localized_address_display: "101A Clay Street, San Francisco, CA 94111",
  event_date: "2017-10-01T00:00:00",
  URL: "https://www.eventbrite.com/e/tech-training-for-chinese-women-tickets-35488876184"
})

Connect.create!({
  title: "500 Startups hosts Speed mentorship: Women in Product & Engineering",
  description: "NextPlay and 500 Startups bring to you a night of speed mentoring for women in product and engineering in the Bay Area.",
  localized_address_display: "814 Mission Street 6th floor, San Francisco, CA 94103",
  event_date: "2017-10-02T18:00:00",
  URL: "https://www.eventbrite.com/e/500-startups-hosts-speed-mentorship-women-in-product-engineering-tickets-37894912704"
})

Connect.create!({
  title: "Brilliance Networking Meet & Greet - October 2017",
  description: "Join us for our next Brilliance meet and greet event at the St. Regis Hotel Lounge Bar, next door to SFMOMA. Appetizers will be provided for the group. Cash bar.",
  localized_address_display: "125 3rd Street, San Francisco, CA 94103",
  event_date: "2017-10-03T18:00:00",
  URL: "https://www.eventbrite.com/e/brilliance-networking-meet-greet-october-2017-tickets-38082700382"
})

Connect.create!({
  title: "Talent Connect: Diversity, Equity, and Inclusion in Social Enterprise",
  description: "Social Enterprise Alliance and the Impact Hub San Francisco with support from Laborx are hosting a Talent Connect to bring social enterprise talent seekers and job seekers together to network.",
  localized_address_display: "1885 Mission Street, San Francisco, CA 94103",
  event_date: "2017-10-10T21:00:00",
  URL: "https://talent-connect-diversity-equity-and-inclusion.eventbrite.com"
})

Connect.create!({
  title: "Epifania Presents: Female Founders",
  description: "We are excited to have our first Female Founders event! Each woman is in a different phase in their career. Some started businesses, others personal brands. Every woman has had their ups and downs. They will share their stories, and insights they have learned along the way.",
  localized_address_display: "1951 Telegraph Ave #103, Oakland, Ca 94607",
  event_date: "2017-10-05T21:00:00",
  URL: "https://www.eventbrite.com/e/epifania-presents-female-founders-tickets-36884653993"
})

Connect.create!({
  title: "Black Tech Women Brunch!",
  description: "We're super excited for our first Black Tech Women Brunch. Be ready to mingle with fellow black women in tech over food and bottomless mimosas, following the second annual AfroTech conference!",
  localized_address_display: "777 Valencia Street, San Francisco, CA 94110",
  event_date: "2017-11-12T11:30:00",
  URL: "https://www.eventbrite.com/e/black-tech-women-brunch-tickets-36990578817"
})

Connect.create!({
  title: "An Evening with Tech Ladies x Slack",
  description: "Come mingle with us at Slack HQ for happy hour! You'll have a chance to connect with and hear from top women at Slack regarding navigating career transitions, identifying and leaning on female mentors, creating inclusive workspaces and managing teams effectively.",
  localized_address_display: "155 5th Street, San Francisco, CA 94103",
  event_date: "2017-10-25T18:00:00",
  URL: "https://www.eventbrite.com/e/an-evening-with-tech-ladies-x-slack-tickets-37745439626"
})
