# This file should contain all the record creation needed to experiment with
# your app during development.
#
# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

%w(antony jeff matt jason).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: nil)
end

%w(antony).each do |name|
  tweet = "#{name} just tweeted"
  email = "#{name}@#{name}.com"
  next if Tweet.exists? content: tweet
  Tweet.create!(content: tweet,
                user_id: 1)
end

%w(jeff).each do |name|
  tweet = "#{name} just tweeted"
  email = "#{name}@#{name}.com"
  next if Tweet.exists? content: tweet
  Tweet.create!(content: tweet,
                user_id: 2)
end

%w(matt).each do |name|
  tweet = "#{name} just tweeted"
  email = "#{name}@#{name}.com"
  next if Tweet.exists? content: tweet
  Tweet.create!(content: tweet,
                user_id: 3)
end

%w(jason).each do |name|
  tweet = "#{name} just tweeted"
  email = "#{name}@#{name}.com"
  next if Tweet.exists? content: tweet
  Tweet.create!(content: tweet,
                user_id: 4)
end

%w(jason).each do |name|
  tweet = "#{name} just tweeted again"
  email = "#{name}@#{name}.com"
  next if Tweet.exists? content: tweet
  Tweet.create!(content: tweet,
                user_id: 4)
end

%w(matt).each do |name|
  tweet = "#{name} just tweeted again"
  email = "#{name}@#{name}.com"
  next if Tweet.exists? content: tweet
  Tweet.create!(content: tweet,
                user_id: 3)
end

%w(jeff).each do |name|
  tweet = "#{name} just tweeted again!"
  email = "#{name}@#{name}.com"
  next if Tweet.exists? content: tweet
  Tweet.create!(content: tweet,
                user_id: 2)
end

%w(antony).each do |name|
  tweet = "#{name} just tweeted again!"
  next if Tweet.exists? content: tweet
  Tweet.create!(content: tweet,
                user_id: 1)
end
