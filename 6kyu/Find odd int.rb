=begin
https://www.codewars.com/kata/find-the-odd-int/train/ruby

Given an array, find the int that appears an odd number of times.

There will always be only one integer that appears an odd number of times.
=end

def find_it(seq)
  num_count = Hash.new(0)
  seq.map {|int| num_count[int] += 1}
  num_count.map {|key, val| return key if val % 2 != 0}
end

puts find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])
