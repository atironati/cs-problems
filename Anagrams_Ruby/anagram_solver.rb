#!/usr/bin/env ruby

wordsHash = {}
count = 0

file = File.open(ARGV[0], "r")

def sortLetters(word)
  word.chars.sort{ |a, b| a.casecmp(b) }.join
end

while (word = file.gets)
  letters = sortLetters(word)
  if wordsHash.has_key?(letters)
    count += wordsHash[letters] ? 1 : 2
    wordsHash[letters] = true
  else
    wordsHash[letters] = false
  end
end

puts "count: " + count.to_s

file.close

