# create an algorithm that checks to make sure a string has all
# unique characters
require 'set'
def unique(str)
  set = Set.new
  i = 0
  while i < str.length - 1
    char = str[i]
    if set.include?(char)
      return false
    else
      set << str[i]
    end
    i += 1
  end
  true
end


puts unique("bel") == true
puts unique("hello") == false
