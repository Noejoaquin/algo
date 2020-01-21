# given two strings, decide if str1 is a permutation of str2

def permutation?(str1, str2)
  str1_count = count_char_hash(str1)
  str2_count = count_char_hash(str2)

  return false if str1_count.length != str2_count.length

  str1_count.each do |char, count|
    return false if str2_count[char] == nil || str2_count[char] != count
  end
  true
end

def count_char_hash(str)
  bank = Hash.new(0)
  i = 0
  while i < str.length
    if bank[str[i]]
      bank[str[i]] += 1
    end
    i += 1
  end
  bank
end


puts permutation?("hello ", "hel lo") == true
puts permutation?("whoa", "hwao") == true
puts permutation?("wowzaaa", "zaawow") == false
