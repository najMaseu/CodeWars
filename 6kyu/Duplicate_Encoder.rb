#https://www.codewars.com/kata/duplicate-encoder/train/ruby

#The goal of this exercise is to convert a string to a new string where each character
#in the new string is '(' if that character appears only once in the original string,
#or ')' if that character appears more than once in the original string.

#Ignore capitalization when determining if a character is a duplicate.

#Examples:

#{}"din" => "((("

#{}"recede" => "()()()"

#{}"Success" => ")())())"

#{}"(( @" => "))(("

def duplicate_encode(word)
  a = []
  index = 0
  hash = Hash.new(0)
  a = word.upcase.split(//)
  a.collect {|j| hash[j] += 1}
  a.collect {|key| hash[key] > 1? (  a[index] = ")"; index += 1) : (  a[index] = "("; index += 1)}
  puts a.join
end



 duplicate_encode("PenisssssAaaa lubje")
