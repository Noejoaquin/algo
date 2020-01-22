# find the sequence with the largest sum in the array
# ex. [2, -8, 3, -2, 4, -10] results in 5 ([3, -2, 4])
def contiguous_sequence(arr)
  return arr[0] if arr.length == 1
  max_sum = arr.first
  current_sum = arr.first
  i = 1
  while i < arr.length - 1
    new_sum = current_sum + arr[i]
    if new_sum < 0 && new_sum < max_sum
      puts
      current_sum = arr[i]
      i +=1
    else
      current_sum = current_sum + arr[i]
      max_sum = max_sum < current_sum ? current_sum : max_sum
      i += 1
    end
  end
  puts max_sum
end


contiguous_sequence([2, -8, 3, -2, 4, -10])
