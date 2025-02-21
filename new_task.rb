#!/usr/bin/env ruby
require 'bunny'

connection = Bunny.new(automatically_recover: false)
connection.start

channel = connection.create_channel
queue = channel.queue('hello')

message = ARGV.empty? ? 'Hello from the otter side!!' : ARGV.join(' ')

queue.publish(message, persistent: true)
puts " [x] Sent #{message}"

connection.close