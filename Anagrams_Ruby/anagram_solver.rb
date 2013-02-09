#!/usr/bin/env ruby

words_hash = {}
count = 0

file = File.open(ARGV[0], "r")

start_time = Time.now

def sort_letters(word)
  word.chars.sort{ |a, b| a.casecmp(b) }.join
end

while (word = file.gets)
  letters = sort_letters(word)
  if words_hash.has_key?(letters)
    count += words_hash[letters] ? 1 : 2
    words_hash[letters] = true
  else
    words_hash[letters] = false
  end
end

end_time = Time.now
puts "time: " + (end_time - start_time).to_s
puts "count: " + count.to_s


file.close
