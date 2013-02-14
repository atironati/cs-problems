#!/usr/bin/env ruby

limit = ARGV[0]

def printInput (input)
  input.each_line do |line|
    if line.length >= limit
      STDOUT.write line
    else
      index = line.length
      (line.length - 1).downto(0) do |i|
        index = i
        break if line[i] = " "
      end
      STDOUT.write line[0..index]
      printInput line[index..-1]
    end
  end
end

input = STDIN.read
printInput input
