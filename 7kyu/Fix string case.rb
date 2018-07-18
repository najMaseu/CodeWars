=begin
https://www.codewars.com/kata/fix-string-case

In this Kata, you will be given a string that may have mixed uppercase and lowercase letters and your task is to convert that string to either lowercase only or uppercase only based on:

make as few changes as possible.
if the string contains equal number of uppercase and lowercase letters, convert the string to lowercase.
For example:

solve("coDe") = "code". Lowercase characters > uppercase. Change only the "D" to lowercase.
solve("CODe") = "CODE". Uppercase characters > lowecase. Change only the "e" to uppercase.
solve("coDE") = "code". Upper == lowercase. Change all to lowercase.
=end

def solve s
  up = 0
  down = 0
  s.chars
    .map {|char| char.to_s != char.to_s.upcase ? (down += 1) : (up += 1)}
    s.upcase! if up > down
    s.downcase! if up < down
    s.downcase! if up == down
    s
end
