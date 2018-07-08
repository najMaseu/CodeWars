=begin
https://www.codewars.com/kata/55f81f9aa51f9b72a200002f

Write a function called findUnique which returns the only unique number from an array.

All numbers in the unsorted array are present twice, except the one you have to find. The numbers are always valid integer values between 1 and 2147483647, so no need for type and error checking. The array contains at least one number and may contain millions of numbers. So make sure your solution is optimized for speed.

Example

Input:

[ 1, 8, 4, 4, 6, 1, 8 ]
Expected output:

6
=end




def find_unique(numbers)
  hash = Hash.new(0)
  numbers.map{|j| hash[j] += 1}
  hash.map{|key, val| return key if hash[key]== 1}
end

puts find_unique([1,1,3,4,2,2,3])
