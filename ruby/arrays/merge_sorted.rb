# Given two sorted arrays merge them in a sorted manner
#
# Input: arr1[] = { 1, 3, 4, 5}, arr2[] = {2, 4, 6, 8} 
# Output: arr3[] = {1, 2, 3, 4, 4, 5, 6, 8}
#
# ref: https://www.geeksforgeeks.org/merge-two-sorted-arrays/
#
# Idea:
#   ptr1 = 0
#   ptr1_max = arr1.length
#   ptr2 = 0
#   ptr2_max = arr2.length
#   
#   for size(arr1 + arr2):
#     if ptr1 or ptr2 is > max 
#       take the other ptr
#     else 
#       pull value from ptr1 and ptr2
#       compare and take smallest
#       advanced the pointer

input_one = [2,3,3,6,8]
input_two = [3,7,11,15]

output = []

ptr_one = 0
ptr_two = 0

ptr_one_max = input_one.size
ptr_two_max = input_one.size

length = input_one.size + input_two.size

# Base case for empty values
if input_one.empty?
  output = second
  return 
elsif input_two.empty?
  output = first
  return 
end

# Perform the initial 
first = input_one[ptr_one]
second = input_two[ptr_two]

while output.length < length do
  if ptr_one == ptr_one_max 
  # If pointer one has reached its max
  # just add the remaining from pointer two
    output << input_two[ptr_two]
    ptr_two += 1
  elsif ptr_two == ptr_two_max
  # If pointer two has reached its max
  # just add the remaining from pointer one
    output << input_one[ptr_one]
    ptr_one += 1
  else
    # Compare the values for pointer one and two
    # Add the smallest to the output array
    # Advance the respective pointer
    first = input_one[ptr_one]
    second = input_two[ptr_two]

    if first < second 
      output << first
      ptr_one += 1
    else 
      output << second
      ptr_two += 1
    end
  end
end

puts "input one: #{input_one} and input two: #{input_two}"
puts "Completed merge: #{output}"
