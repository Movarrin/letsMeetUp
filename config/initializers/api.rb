#API AUTH
require 'yelp' 
Yelp.client.configure do |config|
  config.consumer_key = ENV["YELP_CONS_KEY"]
  config.consumer_secret = ENV["YELP_CONS_SECRET"]
  config.token = ENV["YELP_TOKEN"]
  config.token_secret = ENV["YELP_TOKEN_SECRET"]
end