require 'rubygems'
require 'dotenv'
Dotenv.load
require 'twitter'

client = Twitter::REST::Client.new do |config|
  config.consumer_key = ENV['CONSUMER_KEY']
  config.consumer_secret = ENV['CONSUMER_SECRET']
  config.access_token = ENV['ACCESS_TOKEN']
  config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
end

tweets = ['Gordon Hayward', 'Derrick Favors', 'Rudy Gobert']

client.update("#{tweets[rand(tweets.size)]} #NBABallot")