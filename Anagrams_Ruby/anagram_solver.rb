#!/usr/bin/env ruby

wordsHash = {}
puts ARGV[0]
file = File.open(ARGV[0], "r")
puts "yay"
puts file.inspect

file.close

puts "done"
