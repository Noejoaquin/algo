def urlify(str, length)
  str = str[0...length]
  i = 0
  while i < length
    str[i] = "%20" if str[i] == " "
    i += 1
  end
  str
end

puts urlify("Mr John Smith   ", 13) == "Mr%20John%20Smith"
