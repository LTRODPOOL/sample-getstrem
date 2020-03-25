require 'stream_rails'

StreamRails.configure do |config|
  config.api_key      = "urjm7nx58vty"
  config.api_secret   = "ka82ackjac8vy56jt5k7krftm78mdzh7zgnepabcbacjyv7e48rkk5tprjw3jwvr"
  config.timeout      = 30                  # Optional, defaults to 3
  config.location     = 'us-east'           # Optional, defaults to 'us-east'
  config.api_hostname = 'stream-io-api.com' # Optional, defaults to 'stream-io-api.com'
  # If you use custom feed names, e.g.: timeline_flat, timeline_aggregated,
  # use this, otherwise omit:
  config.news_feeds = { flat: "carrerfy_flat", aggregated: "carrerfy_aggregated" }
  # Point to the notifications feed group providing the name, omit if you don't
  # have a notifications feed
  config.notification_feed = "carrerfy_notification"
end