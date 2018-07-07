=begin
https://www.codewars.com/kata/abbreviate-a-two-word-name/train/ruby


Write a function to convert a name into initials. This kata strictly takes two words with one space in between them.

The output should be two capital letters with a dot seperating them.

It should look like this:

Sam Harris => S.H

Patrick Feeney => P.F
=end

def abbrev_name(name)
  name.split.collect {|k| k[0]}.join(".").upcase
end

puts abbrev_name("Maseu Szmit")
