def sort(array)
array_length = array.size
return array if array_length <= 1

loop do 
  swapped = false
  
  (array_length - 1).times do |i|
    if array[i] > array[i + 1]
      array[i], array[i + 1] = array[i + 1], array[i]
      swapped = true
    end
  end
  break if not swapped
end
array
end
arr = [3, 1, 2]
print sort(arr)
# Output => [1, 2, 3]


# Add sort by ascending/descending functionality

def sort_bubble(array, order: :ascending)
array_length = array.size
return arry if array_length <= 1

loop do
swapped = false
(array_length  - 1).times do |i|
if order == :ascending
if array[i] > array[i + 1]
array[i], array[i + 1] = array[i + 1], array[i]
swapped = true
end

elsif order == :descending
if array[i] < array[i + 1]
array[i], array[i + 1] = array[i + 1], array[i]
swapped = true

end
end
end
break unless swapped
end
array
end
arr = [3, 1, 2, 4]
print sort_bubble(arr, order: :ascending)  # Output: [1, 2, 3, 4]
print sort_bubble(arr, order: :descending) # Output: [3, 2, 1, 4]