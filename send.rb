#!/usr/bin/env ruby
require 'bunny'

connection = Bunny.new(automatically_recover: false)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')

channel.default_exchange.publish('Hello... is it me your looking for...?', routing_key: queue.name)
puts " [x] Sent message"

connection.close