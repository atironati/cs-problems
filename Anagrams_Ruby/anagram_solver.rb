#!/usr/bin/env ruby

words_hash = {}
file = nil
verbose_mode = false
count = 0

# parse arguments
ARGV.each do |arg|
  if arg == "-v" || arg == "--verbose"
    verbose_mode = true
  else
    file = File.open(arg, "r")
  end
end

# start timing
start_time = Time.now

# sort the characters in a word alphabetically, ignoring case
# Ex. sort_letters( "tomato" ) -> "amoott"
def sort_letters(word)
  word.chars.sort{ |a, b| a.casecmp(b) }.join
end

# loop through each word in the file
while (word = file.gets)
  letters = sort_letters(word)

  if words_hash.has_key?(letters)
    count += words_hash[letters][0] ? 1 : 2
    words_hash[letters] = [true, words_hash[letters][1] << word.strip]
  else
    words_hash[letters] = [false, [word.strip]]
  end
end
file.close

# stop timing
end_time = Time.now

# loop through the words_hash and print groups of elements
if verbose_mode
  words_hash.each do |key, value|
    if value[0]
      value[1].each_with_index do |word, index|
        last_word = index == value[1].length - 1
        print last_word ? "#{word}\n" :  "#{word},"
      end
    end
  end
end

puts "time: #{end_time - start_time}s"
puts "count: " + count.to_s
