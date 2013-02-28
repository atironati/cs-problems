#!/usr/bin/env ruby

tellers = [
  Teller.new(:rachel,      1,  5),
  Teller.new(:margeret,    3,  8),
  Teller.new(:ben,         8, 10),
  Teller.new(:finkleburg,  1,  2),
]

customers = [
  Customer.new(:fred,     false),
  Customer.new(:molly,    true),
  Customer.new(:bill,     true),
  Customer.new(:eric,     false),
  Customer.new(:chloe,    false),
  Customer.new(:jill,     true),
  Customer.new(:aaron,    true),
  Customer.new(:harold,   true),
  Customer.new(:amy,      false),
  Customer.new(:gulliver, true),
]

bank_of_alexland = Bank.new tellers, customers
bank_of_alexland.operate

puts "Thank you for choosing the Bank of AlexLand. Have a wonderful day and goodbye"
