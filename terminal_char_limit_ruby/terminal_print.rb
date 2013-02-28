#!/usr/bin/env ruby

limit = ARGV[0].to_i

def printInput (limit, input)
  delimiters = [" ", ",", ";"]

  input.each_line do |line|
    if line.length <= limit
      STDOUT.write line
    else
      index = line.length
      (line.length - 1).downto(0) do |i|
        index = i
        break if delimiters.include? line[i]
      end

      STDOUT.write line[0..index] + "\n"
      printInput limit, line[index..-1]
    end
  end
end

input = STDIN.read
printInput limit, input
