=begin
https://www.codewars.com/kata/isograms/train/ruby
An isogram is a word that has no repeating letters,
consecutive or non-consecutive.
Implement a function that determines whether a string that contains only letters is an isogram.
Assume the empty string is an isogram. Ignore letter case.

is_isogram("Dermatoglyphics" ) == true
is_isogram("aba" ) == false
is_isogram("moOse" ) == false # -- ignore letter
=end
def is_isogram(string)
  string.downcase
        .chars
        .map { |e| string.downcase.count(e) > 1 ? false : true }
        .to_a
        .include?(false) ? false : true

end

puts is_isogram("Maseu")
