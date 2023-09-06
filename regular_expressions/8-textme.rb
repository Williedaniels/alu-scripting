#!/usr/bin/env ruby

puts ARGV[0].scan(/Sender: ([A-Za-z0-9+\- ]+|\+\d+), Receiver: ([A-Za-z0-9+\- ]+|\+\d+), Flags: ([A-Za-z0-9,]+)/)
