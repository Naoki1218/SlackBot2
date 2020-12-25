require "slack-notify"
require 'clockwork'
require 'active_support/time'
require 'dotenv'
include Clockwork

module Clockwork
client = SlackNotify::Client.new(webhook_url: ENV["WEBHOOK"])
  client.notify("Hello There!")

  every(3.minutes, 'less.frequent.job')
end
